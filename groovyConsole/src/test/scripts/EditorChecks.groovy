import edofro.groovyconsole.EditorCompletion
import edofro.groovyconsole.TemporaryScriptConsole
import org.codehaus.groovy.control.CompilerConfiguration
import groovy.console.ui.Console
import groovy.console.ui.ConsoleTextEditor
import groovy.console.ui.text.SmartDocumentFilter
import org.freeplane.api.Node

import javax.swing.*
import java.awt.event.KeyEvent
import java.awt.image.BufferedImage

// Drive the real Swing editor without showing a window or starting Freeplane.
SwingUtilities.invokeAndWait {
    def constructor = EditorCompletion.getDeclaredConstructor(javax.swing.text.JTextComponent)
    def install = EditorCompletion.getDeclaredMethod('installHistory', Console)
    def context = EditorCompletion.getDeclaredMethod('context')
    def suggestions = EditorCompletion.getDeclaredMethod('suggestions', Class)
    def listField = EditorCompletion.getDeclaredField('list')
    def popupField = EditorCompletion.getDeclaredField('popup')
    [constructor, install, context, suggestions, listField, popupField]*.setAccessible(true)

    def fixture = {
        def widget = new ConsoleTextEditor()
        widget.enableHighLighter(SmartDocumentFilter)
        def editor = widget.textEditor
        def console = new Console(inputEditor: widget, inputArea: editor, frame: new JInternalFrame())
        def completion = constructor.newInstance(editor)
        install.invoke(completion, console)
        [editor, completion]
    }

    def press = { editor, int key, int modifiers = 0 ->
        def event = new KeyEvent(editor, KeyEvent.KEY_PRESSED, 0, modifiers, key, KeyEvent.CHAR_UNDEFINED)
        editor.keyListeners.each { it.keyPressed(event) }
        assert event.consumed
    }

    def action = { editor, String stroke ->
        def key = editor.inputMap.get(KeyStroke.getKeyStroke(stroke))
        assert key
        editor.actionMap.get(key).actionPerformed(null)
    }

    def paint = { editor ->
        editor.setSize(400, 200)
        def graphics = new BufferedImage(400, 200, BufferedImage.TYPE_INT_ARGB).createGraphics()
        try {
            editor.paint(graphics)
        } finally {
            graphics.dispose()
        }
    }

    def createChild = suggestions.invoke(null, Node).find { it.name == 'createChild' && it.parameterCount > 0 }
    assert createChild
    [
        [KeyEvent.VK_ENTER, 'node.creSuffix', 'node.createChild()Suffix'],
        [KeyEvent.VK_TAB, 'node.creSuffix', 'node.createChild()'],
        [KeyEvent.VK_ENTER, 'node.cre("hola")', 'node.createChild("hola")']
    ].each { key, original, expected ->
        def (editor, completion) = fixture()
        def list = listField.get(completion)
        list.setListData([createChild] as Object[])
        list.selectedIndex = 0
        editor.replaceSelection(original)
        editor.caretPosition = 'node.cre'.length()
        popupField.get(completion).visible = true
        press(editor, key)
        assert editor.text == expected
        assert editor.caretPosition == 'node.createChild('.length()
        action(editor, 'control Z')
        assert editor.text == original
        paint(editor)
        action(editor, 'control shift Z')
        assert editor.text == expected
        paint(editor)
    }

    def (editor, completion) = fixture()
    String original = '      println node.text\n    println node.id\nnext()'
    editor.text = original
    int selectionEnd = original.indexOf('next()')
    editor.select(2, selectionEnd)
    action(editor, 'control shift K')
    assert editor.text == '      // println node.text\n    // println node.id\nnext()'
    action(editor, 'control Z')
    assert editor.text == original

    editor.select(2, selectionEnd)
    press(editor, KeyEvent.VK_TAB)
    assert editor.text == '        println node.text\n        println node.id\nnext()'
    action(editor, 'control Z')
    assert editor.text == original

    editor.select(2, selectionEnd)
    press(editor, KeyEvent.VK_TAB, KeyEvent.SHIFT_DOWN_MASK)
    assert editor.text == '    println node.text\nprintln node.id\nnext()'
    action(editor, 'control Z')
    assert editor.text == original

    [
        ['def n = node\nn.cre', [Node, 'cre']],
        ['def n = node\nn = "hola"\nn.cre', null],
        ['def titulo = node.text\ntitulo.sub', [String, 'sub']],
        ['c.selected.getText().sub', [String, 'sub']],
        ['node.text.reverse().sub', [String, 'sub']],
        ['import java.time.LocalDate\nLocalDate fecha\nfecha.plus', [java.time.LocalDate, 'plus']],
        ['import java.time.*\nLocalDate fecha\nfecha.plus', [java.time.LocalDate, 'plus']],
        ['import static java.time.LocalDate.now\nnow().plus', [java.time.LocalDate, 'plus']],
        ['// import java.time.LocalDate\nLocalDate fecha\nfecha.plus', null]
    ].each { script, expected ->
        editor.text = script
        editor.caretPosition = editor.document.length
        assert context.invoke(completion) == expected
    }
    editor.text = 'def laMejorVariable = "hola"\nlaM'
    editor.caretPosition = editor.document.length
    assert context.invoke(completion)[0]*.toString() == ['laMejorVariable']
    assert suggestions.invoke(null, String)*.toString().containsAll(['reverse()', 'substring(int)', 'substring(int, int)'])
    def widget = new ConsoleTextEditor()
    def reloadEditor = widget.textEditor
    def console = new TemporaryScriptConsole(new Binding(), new CompilerConfiguration()) {
        @Override
        void showFileError(Exception error) { throw error }

        @Override
        void refreshDirty() {}
    }
    console.tracking = true
    console.inputEditor = widget
    console.inputArea = reloadEditor
    console.frame = new JInternalFrame()
    reloadEditor.text = 'println "old"'
    EditorCompletion.install(console)
    reloadEditor.caretPosition = reloadEditor.document.length
    reloadEditor.replaceSelection(' // local edit')
    def reloadDirectory = java.nio.file.Files.createTempDirectory('console-reload-check').toFile()
    def file = new File(reloadDirectory, 'script.groovy')
    try {
        file.setText('println "new"', 'UTF-8')
        console.loadScriptFile(file)
        assert reloadEditor.text == 'println "new"'
        action(reloadEditor, 'control Z')
        assert reloadEditor.text == 'println "new"'

        reloadEditor.caretPosition = reloadEditor.document.length
        reloadEditor.replaceSelection(' // next edit')
        action(reloadEditor, 'control Z')
        assert reloadEditor.text == 'println "new"'
        action(reloadEditor, 'control shift Z')
        assert reloadEditor.text == 'println "new" // next edit'
    } finally {
        java.nio.file.Files.deleteIfExists(file.toPath())
        java.nio.file.Files.deleteIfExists(reloadDirectory.toPath())
    }
}
println 'PASS: editor completion, undo/redo, comments, indentation and inference'
