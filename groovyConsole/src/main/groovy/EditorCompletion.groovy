package edofro.groovyconsole

import java.awt.event.KeyAdapter
import java.awt.event.KeyEvent
import java.beans.Introspector
import java.lang.reflect.Modifier
import javax.swing.*
import javax.swing.text.AbstractDocument
import javax.swing.text.JTextComponent
import javax.swing.undo.CompoundEdit
import javax.swing.undo.UndoManager
import javax.swing.event.DocumentListener
import javax.swing.undo.AbstractUndoableEdit
import javax.swing.event.DocumentEvent
import java.awt.Component
import java.awt.Container
import java.awt.event.ActionEvent
import groovy.console.ui.Console

import groovy.console.ui.text.AutoIndentAction
import groovy.console.ui.text.TextUndoManager
import org.codehaus.groovy.runtime.metaclass.MetaClassRegistryImpl

import org.freeplane.api.Controller
import org.freeplane.api.Node

class EditorCompletion {
    private static final String WORD = /[\p{L}_$][\p{L}\p{N}_$]*/
    private static final String ARGUMENTS = /[^()\[\]{}]*/
    private static final String CHAIN = /${WORD}(?:\s*\(${ARGUMENTS}\))?(?:\s*\.\s*${WORD}(?:\s*\(${ARGUMENTS}\))?)*/
    private final JTextComponent editor
    private final JPopupMenu popup = new JPopupMenu()
    private final JList<Suggestion> list = new JList<>()
    private final Map<Class, List<Suggestion>> members = [:]

    private final UndoManager history = new UndoManager()
    private CompoundEdit completionEdit
    private boolean replayingHistory
    private String previousText

    static void install(Console console) {
        def completion = new EditorCompletion(console.inputArea)
        completion.installHistory(console)
        console.inputArea.putClientProperty(EditorCompletion, completion)
        def highlights = new EditorHighlights(console.inputArea)
        console.toolbar?.add(highlights.manageButton())
    }

    static void resetHistory(JTextComponent editor) {
        EditorCompletion completion = editor.getClientProperty(EditorCompletion)
        if (completion != null) {
            completion.history.discardAllEdits()
            completion.updateHistoryActions()
        }
    }

    private EditorCompletion(JTextComponent editor) {
        this.editor = editor
        popup.focusable = false
        list.focusable = false
        list.selectionMode = ListSelectionModel.SINGLE_SELECTION
        def scroll = new JScrollPane(list)
        scroll.focusable = false
        popup.add(scroll)
        list.addListSelectionListener { list.ensureIndexIsVisible(list.selectedIndex) }
        list.addMouseListener(new java.awt.event.MouseAdapter() {
            @Override
            void mouseClicked(java.awt.event.MouseEvent event) {
                int index = list.locationToIndex(event.point)
                if (index >= 0 && list.getCellBounds(index, index).contains(event.point)) accept(false)
            }
        })

        editor.inputMap.put(KeyStroke.getKeyStroke('ENTER'), 'groovyConsole.autoIndent')
        editor.actionMap.put('groovyConsole.autoIndent', new AutoIndentAction())
        editor.inputMap.put(KeyStroke.getKeyStroke('control K'), 'groovyConsole.completeWord')
        editor.actionMap.put('groovyConsole.completeWord', new AbstractAction() {
            @Override
            void actionPerformed(java.awt.event.ActionEvent event) { completeWord() }
        })
        editor.inputMap.put(KeyStroke.getKeyStroke(KeyEvent.VK_SLASH, KeyEvent.CTRL_DOWN_MASK), 'groovyConsole.toggleComment')
        editor.inputMap.put(KeyStroke.getKeyStroke('control shift K'), 'groovyConsole.toggleComment')
        editor.actionMap.put('groovyConsole.toggleComment', new AbstractAction() {
            @Override
            void actionPerformed(ActionEvent event) { toggleComment() }
        })
        editor.addKeyListener(new KeyAdapter() {
            @Override
            void keyTyped(KeyEvent event) {
                if (event.keyChar == ('.' as char) || Character.isJavaIdentifierPart(event.keyChar)) {
                    SwingUtilities.invokeLater { refresh() }
                }
            }

            @Override
            void keyPressed(KeyEvent event) {
                if (event.keyCode == KeyEvent.VK_SPACE && event.controlDown) {
                    event.consume()
                    refresh()
                } else if (popup.visible) {
                    switch (event.keyCode) {
                        case KeyEvent.VK_ESCAPE:
                            popup.visible = false
                            break
                        case KeyEvent.VK_ENTER:
                            accept(false)
                            break
                        case KeyEvent.VK_TAB:
                            if (event.shiftDown) { indentLines(true); break }
                            accept(true)
                            break
                        case KeyEvent.VK_UP:
                            list.selectedIndex = Math.max(0, list.selectedIndex - 1)
                            break
                        case KeyEvent.VK_DOWN:
                            list.selectedIndex = Math.min(list.model.size - 1, list.selectedIndex + 1)
                            break
                        default:
                            return
                    }
                    event.consume()
                } else if (event.keyCode == KeyEvent.VK_TAB && !event.controlDown && !event.altDown &&
                        (event.shiftDown || editor.selectionStart != editor.selectionEnd || caretInIndentation())) {
                    indentLines(event.shiftDown)
                    event.consume()
                }
            }
        })
        editor.addCaretListener {
            if (popup.visible) SwingUtilities.invokeLater {
                if (popup.visible) refresh()
            }
        }
    }

    private static List<Suggestion> suggestions(Class type) {
        def result = []
        type.methods.each { method ->
            def parameters = method.parameterTypes.collect { it.simpleName }.join(', ')
            result << new Suggestion(method.name, "${method.name}(${parameters})", method.parameterCount)
            String property = propertyName(method)
            if (property) result << new Suggestion(property, property)
        }
        extensionMethods(type).each { method ->
            Class[] parameterTypes = method.nativeParameterTypes
            def parameters = parameterTypes.collect { it.simpleName }.join(', ')
            result << new Suggestion(method.name, "${method.name}(${parameters})", parameterTypes.length)
        }
        result.unique { it.label }.sort { it.label }
    }

    private static List<MetaMethod> extensionMethods(Class type) {
        def registry = GroovySystem.metaClassRegistry
        if (!(registry instanceof MetaClassRegistryImpl)) return []

        def extensions = registry.instanceMethods
        (0..<extensions.size()).collect { extensions.get(it) }.findAll {
            it.declaringClass.theClass.isAssignableFrom(type)
        }
    }

    private List context() {
        def before = editor.document.getText(0, editor.caretPosition)
        // Keep line breaks and mask literal contents so they cannot look like assignments.
        before = before.replaceAll(/(?s)\/\*.*?(?:\*\/|\z)|(?m)\/\/[^\r\n]*|""".*?(?:"""|\z)|'''.*?(?:'''|\z)|"(?:\\.|[^"\\\r\n])*"?|'(?:\\.|[^'\\\r\n])*'?/) { token ->
            token.startsWith('//') || token.startsWith('/*') ?
                token.replaceAll(/[^\r\n]/, ' ') : token.replaceAll(/[^\r\n]/, '@')
        }
        def match = before =~ /(?<![\p{L}\p{N}_$.])(${CHAIN})\s*\.\s*([\p{L}\p{N}_$]*)\z/
        boolean memberAccess = match.find()
        if (!memberAccess) {
            match = before =~ /(?<![\p{L}\p{N}_$.])(${WORD})\z/
            if (!match.find()) return null
        }

        Map<String, Class> types = [node: Node, c: Controller]
        Map<String, Class> declaredTypes = [:]
        Map<String, String> imports = [:]
        Set<String> wildcardImports = [] as Set
        Map<String, List<String>> staticImports = [:].withDefault { [] }
        Set<String> staticWildcards = [] as Set
        String preceding = before.substring(0, match.start())
        preceding.split(/[;\r\n]/).each { statement ->
            def staticImport = statement =~ /\A\s*import\s+static\s+((?:${WORD}\.)*${WORD})\.(\*|${WORD})(?:\s+as\s+(${WORD}))?\s*\z/
            if (staticImport.matches()) {
                String owner = staticImport.group(1)
                String member = staticImport.group(2)
                if (member == '*') staticWildcards.add(owner)
                else staticImports[staticImport.group(3) ?: member].add("${owner}.${member}".toString())
                return
            }
            def wildcard = statement =~ /\A\s*import\s+((?:${WORD}\.)*${WORD})\.\*\s*\z/
            if (wildcard.matches()) {
                wildcardImports.add(wildcard.group(1))
                return
            }
            def imported = statement =~ /\A\s*import\s+((?:${WORD}\.)+${WORD})(?:\s+as\s+(${WORD}))?\s*\z/
            if (imported.matches()) {
                String qualifiedName = imported.group(1)
                imports[imported.group(2) ?: qualifiedName.tokenize('.').last()] = qualifiedName
                return
            }

            def declaration = statement =~ /\A\s*((?:${WORD}\.)*${WORD})\s+(${WORD})\s*(?:=(?!=|~).*?)?\s*\z/
            if (declaration.matches() && (imports.containsKey(declaration.group(1)) ||
                    Character.isUpperCase(declaration.group(1).tokenize('.').last().charAt(0)))) {
                String name = declaration.group(2)
                String typeName = declaration.group(1)
                Class declaredType = resolveType(imports[typeName] ?: typeName, wildcardImports)
                declaredTypes[name] = declaredType
                types[name] = declaredType
                return
            }
            def uninitialized = statement =~ /\A\s*def\s+(${WORD})\s*\z/
            if (uninitialized.matches()) {
                String name = uninitialized.group(1)
                declaredTypes.remove(name)
                types[name] = null
                return
            }
            def assignment = statement =~ /\A\s*(?:def\s+)?(${WORD})\s*=(?!=|~)\s*(.*?)\s*\z/
            if (assignment.matches()) {
                String name = assignment.group(1)
                String value = assignment.group(2)
                if (statement.trim().startsWith('def ')) declaredTypes.remove(name)
                types[name] = declaredTypes.containsKey(name) ? declaredTypes[name] : inferType(value, types, staticImports, staticWildcards)
            }
        }

        if (!memberAccess) {
            String prefix = match.group(1)
            def variables = types.keySet().findAll { it != prefix && it.startsWith(prefix) }
            return variables ? [variables.sort().collect { new Suggestion(it, it) }, prefix] : null
        }

        Class type = inferType(match.group(1), types, staticImports, staticWildcards)
        type ? [type, match.group(2)] : null
    }

    private static String propertyName(java.lang.reflect.Method method) {
        if (method.parameterCount != 0 || method.returnType == Void.TYPE) return null
        String name = method.name
        if (name.startsWith('get') && name.length() > 3) return Introspector.decapitalize(name.substring(3))
        if (name.startsWith('is') && name.length() > 2 && method.returnType == Boolean.TYPE) {
            return Introspector.decapitalize(name.substring(2))
        }
        return null
    }

    private static Class inferType(String value, Map<String, Class> types, Map<String, List<String>> staticImports, Set<String> staticWildcards) {
        def access = value =~ /\A(${CHAIN})\s*\.\s*(${WORD})\z/
        if (!access.matches()) {
            def call = value =~ /\A(${CHAIN})\s*\.\s*(${WORD})\s*\((${ARGUMENTS})\)\z/
            if (!call.matches()) {
                if (types.containsKey(value)) return types[value]
                def unqualified = value =~ /\A(${WORD})(?:\s*\((${ARGUMENTS})\))?\z/
                if (!unqualified.matches()) return null
                String name = unqualified.group(1)
                String arguments = unqualified.group(2)?.trim()
                Integer count = unqualified.group(2) == null ? null : (arguments ? arguments.split(',', -1).length : 0)
                List<String> candidates = staticImports.get(name) ?: staticWildcards.collect { "${it}.${name}".toString() }
                def returns = candidates.collectMany { qualified ->
                    int separator = qualified.lastIndexOf('.')
                    Class owner = resolveType(qualified.substring(0, separator), Collections.emptySet())
                    if (!owner) return []
                    String member = qualified.substring(separator + 1)
                    if (count == null) {
                        return owner.fields.findAll { it.name == member && Modifier.isStatic(it.modifiers) }*.type
                    }
                    owner.methods.findAll {
                        it.name == member && Modifier.isStatic(it.modifiers) &&
                            (it.varArgs ? count >= it.parameterCount - 1 : count == it.parameterCount)
                    }*.returnType
                }.unique()
                return returns.size() == 1 && returns.first() != Void.TYPE ? returns.first() : null
            }

            Class receiver = inferType(call.group(1), types, staticImports, staticWildcards)
            if (!receiver) return null
            String name = call.group(2)
            String arguments = call.group(3).trim()
            int count = arguments ? arguments.split(',', -1).length : 0
            def returnTypes = receiver.methods.findAll { method ->
                method.name == name && (method.varArgs ?
                    count >= method.parameterCount - 1 : count == method.parameterCount)
            }*.returnType.unique()
            // Prefer declared methods when a signature is already available on the receiver.
            if (!returnTypes) {
                returnTypes = extensionMethods(receiver).findAll { method ->
                    method.name == name && (method.nativeParameterTypes.length == count ||
                        (method.vargsMethod && count >= method.nativeParameterTypes.length - 1))
                }*.returnType.unique()
            }
            return returnTypes.size() == 1 && returnTypes.first() != Void.TYPE ? returnTypes.first() : null
        }

        Class receiver = inferType(access.group(1), types, staticImports, staticWildcards)
        if (!receiver) return null
        String property = access.group(2)
        def returnTypes = receiver.methods.findAll { propertyName(it) == property }*.returnType.unique()
        returnTypes.size() == 1 ? returnTypes.first() : null
    }

    private static Class resolveType(String name, Set<String> wildcardImports) {
        if (!name.contains('.')) {
            def importedTypes = wildcardImports.collect { resolveType("${it}.${name}", Collections.emptySet()) }.findAll().unique()
            if (importedTypes) return importedTypes.size() == 1 ? importedTypes.first() : null
        }
        List<String> candidates = name.contains('.') ? [name] :
            ['java.lang', 'java.util', 'java.io', 'java.net', 'java.math', 'groovy.lang', 'groovy.util', 'org.freeplane.api'].collect { "${it}.${name}".toString() }
        for (String candidate : candidates) {
            try {
                return Class.forName(candidate, false, EditorCompletion.classLoader)
            } catch (ClassNotFoundException ignored) {
                // Try the next package.
            }
        }
        return null
    }

    private void refresh() {
        def target = context()
        def matches = []
        if (target) {
            matches = target[0] instanceof Class ?
                members.computeIfAbsent(target[0]) { suggestions(it) }.findAll { it.name.startsWith(target[1]) } :
                target[0]
        }
        if (!matches || !editor.showing) {
            popup.visible = false
            return
        }
        def previous = list.selectedValue?.label
        if ((0..<list.model.size).collect { list.model.getElementAt(it).label } != matches*.label) {
            list.visibleRowCount = Math.min(matches.size(), 8)
            list.setListData(matches as Suggestion[])
            list.selectedIndex = Math.max(0, matches.findIndexOf { it.label == previous })
            popup.pack()
        }
        if (!popup.visible) {
            def caret = editor.modelToView(editor.caretPosition)
            if (caret) popup.show(editor, (int) caret.getX(), (int) (caret.getY() + caret.getHeight()))
        }
    }

    private void accept(boolean replaceIdentifier) {
        def target = context()
        def selected = list.selectedValue
        popup.visible = false
        if (!target || !selected?.name?.startsWith(target[1])) return

        int caret = editor.caretPosition
        int start = caret - target[1].length()
        int end = replaceIdentifier ? identifierEnd(caret) : caret
        String replacement = selected.name
        int destination = start + replacement.length()
        if (selected.parameterCount >= 0) {
            String tail = editor.document.getText(end, editor.document.length - end)
            def opening = tail =~ /\A[ \t]*\(/
            if (opening.find()) {
                int inside = opening.end()
                int closing = selected.parameterCount == 0 ? closingParenthesis(tail, inside) : -1
                destination += closing >= 0 ? closing + 1 : inside
            } else {
                replacement += '()'
                destination += selected.parameterCount == 0 ? 2 : 1
            }
        }

        editor.select(start, end)
        replaceAsCompletion(replacement)
        editor.caretPosition = destination
    }

    private static int closingParenthesis(String text, int start) {
        int depth = 1
        char quote = 0
        for (int index = start; index < text.length(); index++) {
            char character = text.charAt(index)
            if (quote) {
                if (character == ('\\' as char)) index++
                else if (character == quote) quote = 0
            } else if (character == ('"' as char) || character == ("'" as char)) {
                quote = character
            } else if (character == ('(' as char)) {
                depth++
            } else if (character == (')' as char) && --depth == 0) {
                return index
            }
        }
        return -1
    }

    private void completeWord() {
        popup.visible = false
        def before = editor.document.getText(0, editor.caretPosition)
        def prefix = before =~ /${WORD}\z/
        if (!prefix.find()) return
        String word = prefix.group()
        def candidates = (editor.text =~ WORD).findAll().unique().findAll {
            it.startsWith(word) && it != word
        }
        if (candidates) replaceWord(word.length(), candidates.first())
    }

    private void replaceWord(int prefixLength, String replacement) {
        int caret = editor.caretPosition
        editor.select(caret - prefixLength, identifierEnd(caret))
        replaceAsCompletion(replacement)
    }

    private void installHistory(Console console) {
        Action originalUndo = console.inputEditor.undoAction
        Action originalRedo = console.inputEditor.redoAction
        Action undo = new AbstractAction() {
            @Override
            void actionPerformed(ActionEvent event) {
                if (history.canUndo()) history.undo()
                updateHistoryActions()
            }
        }
        Action redo = new AbstractAction() {
            @Override
            void actionPerformed(ActionEvent event) {
                if (history.canRedo()) history.redo()
                updateHistoryActions()
            }
        }
        [undo: undo, redo: redo].each { name, action ->
            Action original = name == 'undo' ? originalUndo : originalRedo
            Action consoleAction = console.swing?.variables?.get(name + 'Action') as Action
            [Action.NAME, Action.SMALL_ICON, Action.SHORT_DESCRIPTION, Action.ACCELERATOR_KEY,
             Action.MNEMONIC_KEY].each { key ->
                action.putValue(key, consoleAction?.getValue(key) ?: original.getValue(key))
            }
            editor.actionMap.put("groovyConsole.${name}".toString(), action)
            // Consume the shortcut even when the menu action is disabled, so Swing
            // cannot fall through to a window-level binding for the old history.
            editor.actionMap.put("groovyConsole.${name}.shortcut".toString(), new AbstractAction() {
                @Override
                void actionPerformed(ActionEvent event) { action.actionPerformed(event) }
            })
            replaceAction(console.frame.rootPane, original, action)
            if (consoleAction != null && !consoleAction.is(original)) {
                replaceAction(console.frame.rootPane, consoleAction, action)
            }
        }
        int shortcut = java.awt.Toolkit.defaultToolkit.menuShortcutKeyMaskEx
        editor.inputMap.put(KeyStroke.getKeyStroke(KeyEvent.VK_Z, shortcut), 'groovyConsole.undo.shortcut')
        editor.inputMap.put(KeyStroke.getKeyStroke(KeyEvent.VK_Y, shortcut), 'groovyConsole.redo.shortcut')
        editor.inputMap.put(KeyStroke.getKeyStroke(KeyEvent.VK_Z, shortcut | KeyEvent.SHIFT_DOWN_MASK), 'groovyConsole.redo.shortcut')

        AbstractDocument document = (AbstractDocument) editor.document
        document.undoableEditListeners.findAll { it instanceof TextUndoManager }.each {
            document.removeUndoableEditListener(it)
            it.discardAllEdits()
        }
        previousText = editor.text
        document.addDocumentListener(new DocumentListener() {
            @Override
            void insertUpdate(DocumentEvent event) { recordTextEdit(event, true) }

            @Override
            void removeUpdate(DocumentEvent event) { recordTextEdit(event, false) }

            @Override
            void changedUpdate(DocumentEvent event) {}
        })
        updateHistoryActions()
    }

    private void recordTextEdit(DocumentEvent event, boolean insertion) {
        int offset = event.offset
        int length = event.length
        String currentText = event.document.getText(0, event.document.length)
        String text = (insertion ? currentText : previousText).substring(offset, offset + length)
        previousText = currentText
        if (replayingHistory) return

        def edit = new AbstractUndoableEdit() {
            @Override
            void undo() {
                super.undo()
                replayTextEdit(offset, text, !insertion)
            }

            @Override
            void redo() {
                super.redo()
                replayTextEdit(offset, text, insertion)
            }
        }
        if (completionEdit != null) completionEdit.addEdit(edit)
        else history.addEdit(edit)
        updateHistoryActions()
    }

    private void replayTextEdit(int offset, String text, boolean insertion) {
        // Replay text through the document so the highlighter and Swing views rebuild their ranges.
        replayingHistory = true
        try {
            if (insertion) editor.document.insertString(offset, text, null)
            else editor.document.remove(offset, text.length())
            editor.caretPosition = offset + (insertion ? text.length() : 0)
        } finally {
            replayingHistory = false
        }
    }

    private static void replaceAction(Component component, Action original, Action replacement) {
        if (component instanceof AbstractButton && component.action?.is(original)) {
            component.action = replacement
        }
        if (component instanceof JMenu) {
            component.menuComponents.each { replaceAction(it, original, replacement) }
        } else if (component instanceof Container) {
            component.components.each { replaceAction(it, original, replacement) }
        }
    }

    private void updateHistoryActions() {
        editor.actionMap.get('groovyConsole.undo')?.setEnabled(history.canUndo())
        editor.actionMap.get('groovyConsole.redo')?.setEnabled(history.canRedo())
    }

    private boolean caretInIndentation() {
        def document = editor.document
        int caret = editor.caretPosition
        def root = document.defaultRootElement
        int start = root.getElement(root.getElementIndex(caret)).startOffset
        document.getText(start, caret - start) ==~ /[ \t]*/
    }

    private void indentLines(boolean unindent) {
        editLines { lines ->
            lines.collect { line ->
                def leading = line =~ /\A[ \t]*/
                leading.find()
                String indentation = leading.group()
                int width = 0
                indentation.each { character ->
                    width += character == '\t' ? 4 - width % 4 : 1
                }
                if (!unindent) return indentation + (' ' * (4 - width % 4)) + line.substring(indentation.length())
                if (width == 0) return line

                int target = width - ((width - 1) % 4 + 1)
                int kept = 0
                int columns = 0
                while (columns < target && kept < indentation.length()) {
                    columns += indentation.charAt(kept++) == ('\t' as char) ? 4 - columns % 4 : 1
                }
                indentation.substring(0, kept) + line.substring(indentation.length())
            }
        }
    }

    private void toggleComment() {
        editLines { lines ->
            boolean uncomment = lines.findAll { !it.trim().empty }.every { it.stripLeading().startsWith('//') }
            lines.collect { line ->
                if (line.trim().empty) return line
                uncomment ? line.replaceFirst(/^([ \t]*)\/\/ ?/, '$1') :
                    line.replaceFirst(/^([ \t]*)/, '$1// ')
            }
        }
    }

    private void editLines(Closure transform) {
        if (!editor.editable || !editor.enabled) return
        popup.visible = false
        def document = editor.document
        def root = document.defaultRootElement
        int start = editor.selectionStart
        int end = editor.selectionEnd
        int first = root.getElementIndex(start)
        int last = root.getElementIndex(end > start ? end - 1 : end)
        int from = root.getElement(first).startOffset
        int to = Math.min(document.length, root.getElement(last).endOffset - 1)
        String original = document.getText(from, to - from)
        String replacement = transform(original.split('\n', -1)).join('\n')
        if (replacement == original) return

        editor.select(from, to)
        replaceAsCompletion(replacement)
        if (end > start) editor.select(from, from + replacement.length())
        else editor.caretPosition = from + Math.min(replacement.length(), Math.max(0, start - from + replacement.length() - original.length()))
    }

    private void replaceAsCompletion(String replacement) {
        completionEdit = new CompoundEdit()
        try {
            editor.replaceSelection(replacement)
        } finally {
            completionEdit.end()
            if (completionEdit.significant) history.addEdit(completionEdit)
            completionEdit = null
            updateHistoryActions()
        }
    }

    private int identifierEnd(int caret) {
        def suffix = editor.document.getText(caret, editor.document.length - caret) =~ /\A[\p{L}\p{N}_$]*/
        suffix.find()
        return caret + suffix.group().length()
    }

    private static class Suggestion {
        final String name
        final String label

        final int parameterCount

        Suggestion(String name, String label, int parameterCount = -1) {
            this.name = name
            this.label = label
            this.parameterCount = parameterCount
        }

        String toString() { label }
    }
}
