package edofro.groovyconsole

import java.awt.Color
import java.awt.BorderLayout
import java.awt.Dimension
import java.awt.event.ActionEvent
import java.awt.event.MouseAdapter
import java.awt.event.MouseEvent
import java.util.regex.Pattern
import java.util.regex.PatternSyntaxException
import javax.swing.AbstractAction
import javax.swing.BoxLayout
import javax.swing.JButton
import javax.swing.JCheckBox
import javax.swing.JColorChooser
import javax.swing.JLabel
import javax.swing.JOptionPane
import javax.swing.JPanel
import javax.swing.JScrollPane
import javax.swing.JTextField
import javax.swing.JTextArea
import javax.swing.KeyStroke
import javax.swing.SwingUtilities
import javax.swing.event.DocumentEvent
import javax.swing.event.DocumentListener
import javax.swing.text.DefaultHighlighter.DefaultHighlightPainter
import javax.swing.text.JTextComponent

class EditorHighlights {
    private static final Color PREVIEW = new Color(0xFFF176)
    private static final List<Color> PALETTE = [
        0xA5E6A1, 0xA8D8FF, 0xF8BBD0, 0xFFD09A, 0xD7B9FA,
        0x9EE7DC, 0xFFB0A5, 0xE4EDA0
    ].collect { new Color(it) }.asImmutable()

    private final JTextComponent editor
    private final Map<Object, Color> pinned = [:]
    private final Set<String> wholeWords = [] as Set
    private final List<Object> tags = []
    private int nextColor
    private boolean refreshPending
    private boolean previewDismissed

    EditorHighlights(JTextComponent editor) {
        this.editor = editor
        editor.inputMap.put(KeyStroke.getKeyStroke('control shift H'), 'groovyConsole.toggleHighlight')
        editor.actionMap.put('groovyConsole.toggleHighlight', new AbstractAction() {
            @Override
            void actionPerformed(ActionEvent event) { toggleHighlight() }
        })
        editor.addCaretListener {
            previewDismissed = false
            queueRefresh()
        }
        editor.document.addDocumentListener(new DocumentListener() {
            @Override
            void insertUpdate(DocumentEvent event) { queueRefresh() }

            @Override
            void removeUpdate(DocumentEvent event) { queueRefresh() }

            @Override
            void changedUpdate(DocumentEvent event) {}
        })
    }

    JButton manageButton() {
        def button = new JButton('Manage highlights')
        button.toolTipText = 'Manage pinned text and regular expressions'
        button.addActionListener {
            def scroll = new JScrollPane(managementPanel())
            scroll.preferredSize = new Dimension(700, 220)
            JOptionPane.showMessageDialog(editor, scroll, 'Manage highlights', JOptionPane.PLAIN_MESSAGE)
        }
        button
    }

    private JPanel managementPanel() {
        def rows = new JPanel()
        rows.layout = new BoxLayout(rows, BoxLayout.Y_AXIS)
        def empty = new JLabel('No pinned highlights. Select text and press Ctrl+Shift+H to pin it.')
        rows.add(empty)
        empty.visible = pinned.isEmpty()
        def addRow = { Object key, Color color ->
            boolean regex = key instanceof Pattern
            String text = key.toString()
            def row = new JPanel(new BorderLayout(6, 0))
            def label = new JTextField(text.replace('\r', '\\r').replace('\n', '\\n').replace('\t', '\\t'))
            label.editable = false
            label.background = color
            label.foreground = readableForeground(color)
            label.toolTipText = 'Click to edit'
            def count = new JLabel('0', JLabel.RIGHT)
            count.toolTipText = 'Matches in the editor'
            count.preferredSize = new Dimension(48, (int) count.preferredSize.height)
            def previous = new JButton('↑')
            previous.toolTipText = 'Previous match'
            def next = new JButton('↓')
            next.toolTipText = 'Next match'
            previous.addActionListener { navigate(key, false) }
            next.addActionListener { navigate(key, true) }
            def updateCount = {
                int total = 0
                eachMatch(key, editorText()) { int start, int end -> total++ }
                count.text = total.toString()
                previous.enabled = total > 0
                next.enabled = total > 0
            }
            label.addMouseListener(new MouseAdapter() {
                @Override
                void mouseClicked(MouseEvent event) {
                    Object edited = promptForEdit(rows, key)
                    if (edited != null) {
                        key = edited
                        text = key.toString()
                        label.text = text.replace('\r', '\\r').replace('\n', '\\n').replace('\t', '\\t')
                        updateCount()
                    }
                }
            })
            row.add(label, BorderLayout.CENTER)

            def controls = new JPanel()
            def wholeWord = new JCheckBox('Whole word', wholeWords.contains(text))
            if (regex) {
                def regexLabel = new JLabel('Regex')
                regexLabel.preferredSize = wholeWord.preferredSize
                controls.add(regexLabel)
            } else {
                wholeWord.addActionListener {
                    if (wholeWord.selected) wholeWords.add(text)
                    else wholeWords.remove(text)
                    updateCount()
                    queueRefresh()
                }
                controls.add(wholeWord)
            }
            def change = new JButton('Change color…')
            change.addActionListener {
                Color chosen = JColorChooser.showDialog(rows, 'Highlight color', pinned[key])
                if (chosen != null) {
                    pinned[key] = chosen
                    label.background = chosen
                    label.foreground = readableForeground(chosen)
                    queueRefresh()
                }
            }
            def remove = new JButton('Remove')
            remove.addActionListener {
                if (regex) pinned.remove(key)
                else unpin(text)
                rows.remove(row)
                empty.visible = pinned.isEmpty()
                rows.revalidate()
                rows.repaint()
                queueRefresh()
            }
            controls.add(count)
            controls.add(previous)
            controls.add(next)
            controls.add(change)
            controls.add(remove)
            row.add(controls, BorderLayout.EAST)
            row.maximumSize = new Dimension(Integer.MAX_VALUE, (int) row.preferredSize.height)
            rows.add(row)
            updateCount()
        }
        pinned.each(addRow)
        def addRegex = new JButton('Add regex…')
        addRegex.addActionListener {
            Pattern pattern = promptForRegex(rows)
            if (pattern != null) {
                addRow(pattern, pinned[pattern])
                empty.visible = false
                rows.revalidate()
                rows.repaint()
            }
        }
        rows.add(addRegex, 0)
        rows
    }

    private Pattern promptForRegex(JPanel parent) {
        String input = ''
        while (true) {
            input = JOptionPane.showInputDialog(parent, 'Enter a Java regular expression', input)
            if (input == null) return null
            try {
                return pinRegex(input)
            } catch (PatternSyntaxException error) {
                JOptionPane.showMessageDialog(parent, error.description, 'Invalid regex', JOptionPane.ERROR_MESSAGE)
            } catch (IllegalArgumentException error) {
                JOptionPane.showMessageDialog(parent, error.message, 'Cannot add regex', JOptionPane.WARNING_MESSAGE)
            }
        }
    }

    private Pattern pinRegex(String input) {
        if (input.isEmpty()) throw new IllegalArgumentException('Enter a pattern.')
        if (pinned.keySet().any { it instanceof Pattern && it.pattern() == input }) {
            throw new IllegalArgumentException('This pattern is already pinned.')
        }
        Pattern pattern = Pattern.compile(input)
        pinned[pattern] = allocateColor()
        queueRefresh()
        pattern
    }

    private Object promptForEdit(JPanel parent, Object key) {
        def input = new JTextArea(key.toString(), 4, 36)
        String title = key instanceof Pattern ? 'Edit regex' : 'Edit highlighted text'
        while (JOptionPane.showConfirmDialog(parent, new JScrollPane(input), title,
                JOptionPane.OK_CANCEL_OPTION, JOptionPane.PLAIN_MESSAGE) == JOptionPane.OK_OPTION) {
            try {
                return replaceMark(key, input.text)
            } catch (PatternSyntaxException error) {
                JOptionPane.showMessageDialog(parent, error.description, 'Invalid regex', JOptionPane.ERROR_MESSAGE)
            } catch (IllegalArgumentException error) {
                JOptionPane.showMessageDialog(parent, error.message, 'Cannot edit highlight', JOptionPane.WARNING_MESSAGE)
            }
        }
        null
    }

    private Object replaceMark(Object key, String input) {
        if (input.isEmpty()) throw new IllegalArgumentException('Enter text or a pattern.')
        boolean regex = key instanceof Pattern
        if (pinned.keySet().any {
            !it.is(key) && (it instanceof Pattern) == regex && it.toString() == input
        }) {
            throw new IllegalArgumentException('This highlight is already pinned.')
        }
        Object replacement = regex ? Pattern.compile(input) : input
        Color color = pinned.remove(key)
        boolean complete = !regex && wholeWords.remove(key)
        pinned[replacement] = color
        if (complete) wholeWords.add(input)
        if (editor.selectedText == key.toString()) previewDismissed = true
        queueRefresh()
        replacement
    }

    private Color allocateColor() {
        PALETTE.find { !pinned.containsValue(it) } ?: PALETTE[nextColor++ % PALETTE.size()]
    }

    private static Color readableForeground(Color color) {
        (299 * color.red + 587 * color.green + 114 * color.blue >= 128000) ? Color.BLACK : Color.WHITE
    }

    private boolean unpin(String text) {
        if (pinned.remove(text) == null) return false
        wholeWords.remove(text)
        if (editor.selectedText == text) previewDismissed = true
        true
    }

    private void toggleHighlight() {
        String selection = editor.selectedText
        if (!selection) return
        if (wholeWords.contains(selection)) {
            unpin(selection)
        } else if (pinned.containsKey(selection)) {
            String text = editor.document.getText(0, editor.document.length)
            int start = editor.selectionStart
            int end = editor.selectionEnd
            if (isWordAt(text, start)) {
                while (isWordBefore(text, start)) start -= Character.charCount(text.codePointBefore(start))
            }
            if (isWordBefore(text, end)) {
                while (isWordAt(text, end)) end += Character.charCount(text.codePointAt(end))
            }
            String expanded = text.substring(start, end)
            Color color = pinned.remove(selection)
            pinned.putIfAbsent(expanded, color)
            wholeWords.add(expanded)
            editor.select(start, end)
        } else {
            pinned[selection] = allocateColor()
        }
        queueRefresh()
    }

    private static boolean isWordAt(String text, int offset) {
        offset < text.length() && Character.isUnicodeIdentifierPart(text.codePointAt(offset))
    }

    private static boolean isWordBefore(String text, int offset) {
        offset > 0 && Character.isUnicodeIdentifierPart(text.codePointBefore(offset))
    }

    private void queueRefresh() {
        if (refreshPending) return
        refreshPending = true
        SwingUtilities.invokeLater {
            refreshPending = false
            refresh()
        }
    }

    private void refresh() {
        def highlighter = editor.highlighter
        tags.each { highlighter.removeHighlight(it) }
        tags.clear()

        String selection = editor.selectedText
        def matches = new LinkedHashMap<Object, Color>(pinned)
        if (selection && !previewDismissed && !matches.containsKey(selection)) {
            matches[selection] = PREVIEW
        }
        if (!matches) return

        String text = editorText()
        int selectionStart = editor.selectionStart
        int selectionEnd = editor.selectionEnd
        matches.each { Object key, Color color ->
            def painter = new DefaultHighlightPainter(color)
            eachMatch(key, text) { int start, int end ->
                if (outsideSelection(start, end, selectionStart, selectionEnd)) {
                    tags.add(highlighter.addHighlight(start, end, painter))
                }
            }
        }
    }

    private String editorText() {
        editor.document.getText(0, editor.document.length)
    }

    private void eachMatch(Object key, String text, Closure visit) {
        if (key instanceof Pattern) {
            def matcher = key.matcher(text)
            while (matcher.find()) {
                if (matcher.start() < matcher.end()) visit(matcher.start(), matcher.end())
            }
            return
        }
        String needle = (String) key
        boolean wholeWord = wholeWords.contains(needle)
        int start = text.indexOf(needle)
        while (start >= 0) {
            int end = start + needle.length()
            if (!wholeWord || ((!isWordAt(text, start) || !isWordBefore(text, start)) &&
                               (!isWordBefore(text, end) || !isWordAt(text, end)))) {
                visit(start, end)
            }
            start = text.indexOf(needle, end)
        }
    }

    private void navigate(Object key, boolean forward) {
        int anchor = editor.selectionStart
        List<Integer> target = null
        List<Integer> wrap = null
        eachMatch(key, editorText()) { int start, int end ->
            if (!forward || wrap == null) wrap = [start, end]
            if (forward ? start > anchor && target == null : start < anchor) target = [start, end]
        }
        target = target ?: wrap
        if (target != null) {
            editor.select(target[0], target[1])
            // A regex match selected by navigation should keep its regex color on other matches.
            previewDismissed = true
            def bounds = editor.modelToView2D(target[0])
            if (bounds != null) editor.scrollRectToVisible(bounds.bounds)
        }
    }

    private static boolean outsideSelection(int start, int end, int selectionStart, int selectionEnd) {
        selectionStart == selectionEnd || end <= selectionStart || start >= selectionEnd
    }
}
