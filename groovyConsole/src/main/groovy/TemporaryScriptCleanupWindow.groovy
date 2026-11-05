package edofro.groovyconsole

import javax.swing.*
import javax.swing.table.DefaultTableModel
import java.awt.BorderLayout

/** Independent, non-modal review. Merely opening or closing it changes no files. */
class TemporaryScriptCleanupWindow {
    static final Map<String, JFrame> windows = [:]

    static void show(File directory, Closure<Integer> daysProvider) {
        def rows = TemporaryScriptStore.due(directory)
        String key = directory.canonicalPath
        if (windows[key]?.displayable) {
            windows[key].rootPane.getClientProperty('refreshTemporaryFiles').call(rows)
            windows[key].toFront()
            return
        }
        if (!rows) return
        def model = new DefaultTableModel(['Postpone', 'File', 'Due'] as Object[], 0) {
            @Override Class getColumnClass(int column) { column == 0 ? Boolean : String }
            @Override boolean isCellEditable(int row, int column) { column == 0 }
        }
        def dateFormat = java.time.format.DateTimeFormatter.ofPattern('yyyy-MM-dd HH:mm').withZone(java.time.ZoneId.systemDefault())
        rows.each { model.addRow([false, it.file.name, dateFormat.format(java.time.Instant.parse(it.dueAt.toString()))] as Object[]) }
        def table = new JTable(model)
        table.autoCreateRowSorter = true
        table.columnModel.getColumn(0).preferredWidth = 80
        table.columnModel.getColumn(1).preferredWidth = 450
        table.columnModel.getColumn(2).preferredWidth = 180
        def window = new JFrame('Temporary Groovy scripts — cleanup review')
        window.defaultCloseOperation = JFrame.DISPOSE_ON_CLOSE
        window.add(new JLabel('Check files to postpone. Apply deletes unchecked files. Closing keeps all files.'), BorderLayout.NORTH)
        window.add(new JScrollPane(table), BorderLayout.CENTER)
        def buttons = new JPanel()
        def applyButton = new JButton('Apply')
        def closeButton = new JButton('Close without applying')
        buttons.add(applyButton); buttons.add(closeButton)
        def status = new JLabel(' ')
        def footer = new JPanel(new BorderLayout())
        footer.add(status, BorderLayout.NORTH)
        footer.add(buttons, BorderLayout.SOUTH)
        window.add(footer, BorderLayout.SOUTH)
        window.rootPane.putClientProperty('refreshTemporaryFiles', { List<Map> freshRows ->
            if (table.editing) table.cellEditor.stopCellEditing()
            // Keep checked choices for candidates that have not changed since the last display.
            def postponed = (0..<model.rowCount).findAll { model.getValueAt(it, 0) }.collect { rows[it] }
            def snapshot = new ArrayList<Map>(freshRows)
            rows.clear()
            rows.addAll(snapshot)
            model.rowCount = 0
            rows.each { candidate ->
                boolean checked = postponed.any { previous ->
                    previous.id == candidate.id && previous.file.canonicalPath == candidate.file.canonicalPath &&
                    previous.dueAt == candidate.dueAt && previous.scheduled == candidate.scheduled
                }
                model.addRow([checked, candidate.file.name, dateFormat.format(java.time.Instant.parse(candidate.dueAt.toString()))] as Object[])
            }
            applyButton.enabled = !rows.empty
            closeButton.text = rows ? 'Close without applying' : 'Close'
            status.text = rows ? ' ' : 'No expired temporary files.'
            status.toolTipText = null
        })
        closeButton.addActionListener { window.dispose() }
        applyButton.addActionListener {
            if (table.editing && !table.cellEditor.stopCellEditing()) return
            int days = daysProvider.call()
            def outcomes = []
            // Use model indices, not view indices: sorting must not change which file is selected.
            rows.eachWithIndex { row, i ->
                try { outcomes.add(TemporaryScriptStore.apply(row, model.getValueAt(i, 0) as boolean, days)) }
                catch (Exception e) { outcomes.add('error: ' + row.file.name + ': ' + e.message) }
            }
            def errors = outcomes.findAll { it.startsWith('error:') }
            status.text = "Deleted: ${outcomes.count('deleted')} | Postponed: ${outcomes.count('postponed')} | Kept: ${outcomes.count('kept') + outcomes.count('changed')} | Errors: ${errors.size()}"
            status.toolTipText = errors ? errors.join('; ') : null
            model.rowCount = 0
            applyButton.enabled = false
            closeButton.text = 'Close'
        }
        windows[key] = window
        window.addWindowListener(new java.awt.event.WindowAdapter() {
            @Override void windowClosed(java.awt.event.WindowEvent event) {
                if (windows[key]?.is(window)) windows.remove(key)
            }
        })
        window.setSize(780, 330)
        window.setLocationByPlatform(true)
        window.visible = true
    }
}
