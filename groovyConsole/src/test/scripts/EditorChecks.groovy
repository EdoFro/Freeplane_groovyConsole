import edofro.groovyconsole.EditorCompletion
import edofro.groovyconsole.EditorHighlights
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
    widget.enableHighLighter(SmartDocumentFilter)
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
    console.swing = new groovy.swing.SwingBuilder()
    ['undoAction', 'redoAction'].each { name ->
        console.swing.setVariable(name, new AbstractAction(name) {
            @Override
            void actionPerformed(java.awt.event.ActionEvent event) {
                assert false : 'Toolbar must use the editor history'
            }
        })
    }
    def toolbar = new JToolBar()
    def undoButton = toolbar.add(console.swing.getVariable('undoAction') as Action)
    def redoButton = toolbar.add(console.swing.getVariable('redoAction') as Action)
    console.frame.contentPane.add(toolbar)
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
        assert !undoButton.enabled && !redoButton.enabled
        ['control Z', 'control Y'].each { stroke ->
            def shortcut = KeyStroke.getKeyStroke(stroke)
            def binding = reloadEditor.actionMap.get(reloadEditor.inputMap.get(shortcut))
            def event = new KeyEvent(reloadEditor, KeyEvent.KEY_PRESSED, 0,
                shortcut.modifiers, shortcut.keyCode, KeyEvent.CHAR_UNDEFINED)
            assert SwingUtilities.notifyAction(binding, shortcut, event, reloadEditor, event.modifiersEx)
            assert reloadEditor.text == 'println "new"'
        }
        paint(reloadEditor)

        reloadEditor.caretPosition = reloadEditor.document.length
        reloadEditor.replaceSelection(' // next edit')
        assert undoButton.enabled && !redoButton.enabled
        undoButton.doClick(0)
        assert reloadEditor.text == 'println "new"'
        assert !undoButton.enabled && redoButton.enabled
        redoButton.doClick(0)
        assert reloadEditor.text == 'println "new" // next edit'
    } finally {
        java.nio.file.Files.deleteIfExists(file.toPath())
        java.nio.file.Files.deleteIfExists(reloadDirectory.toPath())
    }
}
def highlightEditor
def toggleHighlight = {
    highlightEditor.actionMap.get('groovyConsole.toggleHighlight').actionPerformed(null)
}
def colorsFor = { String needle ->
    highlightEditor.highlighter.highlights.findAll { mark ->
        highlightEditor.document.getText(mark.startOffset, mark.endOffset - mark.startOffset) == needle
    }.collect { it.painter.color }
}

SwingUtilities.invokeAndWait {
    def widget = new ConsoleTextEditor()
    widget.enableHighLighter(SmartDocumentFilter)
    highlightEditor = widget.textEditor
    highlightEditor.text = 'node nodeID Node node.text node.text'
    def console = new Console(inputEditor: widget, inputArea: highlightEditor, frame: new JInternalFrame())
    EditorCompletion.install(console)
    highlightEditor.select(0, 4)
}
SwingUtilities.invokeAndWait {
    assert colorsFor('node').size() == 3
    assert colorsFor('Node').empty
    toggleHighlight()
    highlightEditor.select(17, 26)
    toggleHighlight()
    highlightEditor.caretPosition = highlightEditor.document.length
    highlightEditor.replaceSelection(' node')
}
SwingUtilities.invokeAndWait {
    assert colorsFor('node').size() == 5
    assert colorsFor('node.text').size() == 2
    assert colorsFor('node').first() != colorsFor('node.text').first()
    highlightEditor.select(0, 4)
    toggleHighlight()
    toggleHighlight()
}
SwingUtilities.invokeAndWait {
    assert colorsFor('node').empty
    assert colorsFor('node.text').size() == 2
}
SwingUtilities.invokeAndWait {
    highlightEditor.text = 'nodeID nodeID nodeIDs mynodeID NodeID'
    highlightEditor.select(1, 4)
    toggleHighlight()
}
SwingUtilities.invokeAndWait {
    assert colorsFor('ode').size() == 4
    toggleHighlight()
    assert highlightEditor.selectedText == 'nodeID'
}
SwingUtilities.invokeAndWait {
    assert colorsFor('ode').empty
    assert colorsFor('nodeID').size() == 1
    toggleHighlight()
}
SwingUtilities.invokeAndWait {
    assert colorsFor('nodeID').empty
}
def wholeWordCheckbox
SwingUtilities.invokeAndWait {
    highlightEditor = new JTextPane(text: 'node nodeID node')
    def highlights = new EditorHighlights(highlightEditor)
    highlightEditor.select(0, 4)
    toggleHighlight()
    def managementPanel = EditorHighlights.getDeclaredMethod('managementPanel')
    managementPanel.accessible = true
    def panel = managementPanel.invoke(highlights)
    def row = panel.components.find { it instanceof JPanel }
    assert row.components.find { it instanceof JTextField }.text == 'node'
    def controls = row.components.find { it instanceof JPanel }.components
    def count = controls.find { it instanceof JLabel }
    def previous = controls.find { it instanceof JButton && it.toolTipText == 'Previous match' }
    def next = controls.find { it instanceof JButton && it.toolTipText == 'Next match' }
    wholeWordCheckbox = controls.find { it instanceof JCheckBox }
    assert count.text == '3'
    assert !wholeWordCheckbox.selected
    highlightEditor.select(5, 9)
    wholeWordCheckbox.doClick(0)
    assert highlightEditor.selectionStart == 5 && highlightEditor.selectionEnd == 9
    assert row.components.find { it instanceof JTextField }.text == 'node'
    assert count.text == '2'
    next.doClick(0)
    assert highlightEditor.selectionStart == 12 && highlightEditor.selectedText == 'node'
    next.doClick(0)
    assert highlightEditor.selectionStart == 0
    previous.doClick(0)
    assert highlightEditor.selectionStart == 12
    highlightEditor.caretPosition = highlightEditor.document.length
}
SwingUtilities.invokeAndWait {
    assert colorsFor('node').size() == 2
    wholeWordCheckbox.doClick(0)
}
SwingUtilities.invokeAndWait {
    assert colorsFor('node').size() == 3
}
SwingUtilities.invokeAndWait {
    highlightEditor = new JTextPane(text: 'node12 nodeAB node34')
    def highlights = new EditorHighlights(highlightEditor)
    def pinRegex = EditorHighlights.getDeclaredMethod('pinRegex', String)
    pinRegex.accessible = true
    pinRegex.invoke(highlights, /node\d+/)
    try {
        pinRegex.invoke(highlights, '[')
        assert false : 'Invalid regex accepted'
    } catch (java.lang.reflect.InvocationTargetException error) {
        assert error.cause instanceof java.util.regex.PatternSyntaxException
    }
}
SwingUtilities.invokeAndWait {
    assert colorsFor('node12').size() == 1
    assert colorsFor('node12') == colorsFor('node34')
    assert colorsFor('nodeAB').empty
    highlightEditor.caretPosition = highlightEditor.document.length
    highlightEditor.replaceSelection(' node56')
}
SwingUtilities.invokeAndWait {
    assert colorsFor('node56') == colorsFor('node12')
}
SwingUtilities.invokeAndWait {
    def editor = new JTextPane(text: 'node node12')
    def highlights = new EditorHighlights(editor)
    def replaceMark = EditorHighlights.getDeclaredMethod('replaceMark', Object, String)
    def pinned = EditorHighlights.getDeclaredField('pinned')
    def wholeWords = EditorHighlights.getDeclaredField('wholeWords')
    [replaceMark, pinned, wholeWords]*.setAccessible(true)
    editor.select(0, 4)
    editor.actionMap.get('groovyConsole.toggleHighlight').actionPerformed(null)
    editor.actionMap.get('groovyConsole.toggleHighlight').actionPerformed(null)
    def originalColor = pinned.get(highlights)['node']
    replaceMark.invoke(highlights, 'node', 'value')
    assert pinned.get(highlights)['value'] == originalColor
    assert wholeWords.get(highlights).contains('value')
    assert !wholeWords.get(highlights).contains('node')
    def pinRegex = EditorHighlights.getDeclaredMethod('pinRegex', String)
    pinRegex.accessible = true
    def pattern = pinRegex.invoke(highlights, /node\d+/)
    def regexColor = pinned.get(highlights)[pattern]
    try {
        replaceMark.invoke(highlights, pattern, '[')
        assert false : 'Invalid edited regex accepted'
    } catch (java.lang.reflect.InvocationTargetException error) {
        assert error.cause instanceof java.util.regex.PatternSyntaxException
    }
    assert pinned.get(highlights)[pattern] == regexColor
    def updated = replaceMark.invoke(highlights, pattern, /value\d+/)
    assert pinned.get(highlights)[updated] == regexColor
    assert !pinned.get(highlights).containsKey(pattern)
}
println 'PASS: editor completion, undo/redo, comments, indentation, inference and highlights'
