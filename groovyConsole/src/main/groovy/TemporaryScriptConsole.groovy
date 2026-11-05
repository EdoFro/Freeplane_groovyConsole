package edofro.groovyconsole

import groovy.console.ui.Console
import org.codehaus.groovy.control.CompilerConfiguration
import org.freeplane.plugin.script.FreeplaneScriptBaseClass.ConfigProperties
import javax.swing.JFileChooser
import javax.swing.JOptionPane
import javax.swing.JButton
import java.nio.file.Files

class TemporaryScriptConsole extends Console {
    final List<TemporaryScript> temporaryScripts = []
    boolean tracking
    boolean closingApproved
    boolean temporaryReviewPending
    String nodeBaseline
    String fileBaseline
    Map fileSnapshot
    String lastNodeLabel
    JButton temporaryButton
    boolean showTemporaryButtonLabel = true

    void updateTemporaryButton() {
        if (!temporaryButton) return
        boolean saving = !temporaryScripts.empty && scriptFile != null
        temporaryButton.text = showTemporaryButtonLabel ? (saving ? 'save temporary .groovy' : 'create temporary .groovy') : null
        temporaryButton.toolTipText = saving ? "Save script to ${scriptFile}" : 'Create a temporary Groovy file for IntelliJ'
    }

    TemporaryScriptConsole(Binding binding, CompilerConfiguration config) {
        super(null, binding, config)
    }

    String editorText() { inputArea.text }

    int retentionDays() {
        Math.max(1, new ConfigProperties().getIntProperty('groovyConsole_temporaryRetentionDays', 7))
    }

    void showCleanupReview() {
        String path = new ConfigProperties().getProperty('groovyConsole_temporaryDirectory', '').trim()
        if (path) javax.swing.SwingUtilities.invokeLater {
            try { TemporaryScriptCleanupWindow.show(new File(path), { retentionDays() }) }
            catch (Exception e) { showFileError(e) }
        }
    }

    Map originMetadata(def node) {
        File mapFile = node.map?.file
        [map:mapFile?.absolutePath, nodeId:node.id?.toString(), nodeText:node.plainText?.toString() ?: node.text?.toString(),
         mapLastSaved:mapFile?.isFile() ? java.time.Instant.ofEpochMilli(mapFile.lastModified()).toString() : null]
    }

    void startTracking(String source) {
        nodeBaseline = source in ['note', 'script1'] ? editorText() : null
        if (scriptFile) {
            fileBaseline = editorText()
            fileSnapshot = TemporaryScript.fingerprint(scriptFile as File)
        }
        tracking = true
        refreshDirty()
    }

    boolean nodeDirty() { nodeBaseline == null ? !editorText().isEmpty() : editorText() != nodeBaseline }
    boolean fileDirty() { scriptFile && editorText() != fileBaseline }

    void refreshDirty() {
        if (!tracking) return
        updateTemporaryButton()
        super.setDirty(temporaryReviewPending || nodeDirty() || (scriptFile ? fileDirty() : (nodeBaseline == null && !editorText().isEmpty())))
        statusLabel.text = "Node: ${nodeBaseline == null ? 'not saved' : nodeDirty() ? 'modified' : 'saved'} | File: ${scriptFile ? (fileDirty() ? 'modified' : 'saved') : 'not saved'}"
        if (temporaryReviewPending) statusLabel.text += ' | Temporary file: review on close'
    }

    @Override
    void setDirty(boolean value) {
        if (tracking) refreshDirty()
        else super.setDirty(value)
    }

    void savedInNode(String text, String label) {
        nodeBaseline = text
        lastNodeLabel = label
        temporaryScripts.each { it.savedInNode(text) }
        refreshDirty()
    }

    File chooseTemporaryDirectory() {
        def config = new ConfigProperties()
        String configured = config.getProperty('groovyConsole_temporaryDirectory', '').trim()
        File directory
        if (configured) directory = new File(configured)
        else {
            def chooser = new JFileChooser()
            chooser.dialogTitle = 'Choose temporary Groovy scripts folder'
            chooser.fileSelectionMode = JFileChooser.DIRECTORIES_ONLY
            if (chooser.showOpenDialog(frame) != JFileChooser.APPROVE_OPTION) return null
            directory = chooser.selectedFile
        }
        if (!directory.exists()) {
            if (JOptionPane.showConfirmDialog(frame, "Create folder ${directory}?", 'Temporary scripts', JOptionPane.YES_NO_OPTION) != JOptionPane.YES_OPTION) return null
            Files.createDirectories(directory.toPath())
        }
        if (!directory.isDirectory() || !directory.canWrite()) throw new IOException('The temporary scripts folder is not writable.')
        config.setProperty('groovyConsole_temporaryDirectory', directory.canonicalPath)
        directory
    }

    void saveTemporaryScript() {
        try {
            if (!temporaryScripts.empty && scriptFile != null) {
                fileSave()
                return
            }
            File directory = chooseTemporaryDirectory()
            if (!directory) return
            def initialNode = shell.context.variables.initialNode
            def temporary = TemporaryScript.create(directory, initialNode.plainText?.toString() ?: initialNode.text.toString(), editorText(), originMetadata(initialNode))
            temporaryScripts.add(temporary)
            TemporaryScriptStore.acquire(temporary.file, this)
            temporaryReviewPending = true
            scriptFile = temporary.file
            fileBaseline = editorText()
            fileSnapshot = temporary.created
            refreshDirty()
        } catch (Exception e) { showFileError(e) }
    }

    @Override
    boolean fileSave(EventObject event = null) {
        if (!tracking) return super.fileSave(event)
        if (!scriptFile) return fileSaveAs(event)
        try {
            def current = TemporaryScript.fingerprint(scriptFile as File)
            if (current != fileSnapshot && JOptionPane.showConfirmDialog(frame,
                    'The file changed outside this console. Overwrite it?', 'Save script', JOptionPane.YES_NO_OPTION) != JOptionPane.YES_OPTION) return false
            TemporaryScriptStore.cancel(scriptFile as File)
            (scriptFile as File).setText(TemporaryScriptStore.header(scriptFile as File) + editorText(), 'UTF-8')
            fileBaseline = editorText()
            fileSnapshot = TemporaryScript.fingerprint(scriptFile as File)
            refreshDirty()
            return true
        } catch (Exception e) { showFileError(e); return false }
    }

    @Override
    boolean fileSaveAs(EventObject event = null) {
        if (!tracking) return super.fileSaveAs(event)
        def selected = selectFilename('Save')
        if (selected == null) return false
        File destination = selected as File
        if (destination.exists() && JOptionPane.showConfirmDialog(frame, 'Replace existing file?', 'Save script', JOptionPane.YES_NO_OPTION) != JOptionPane.YES_OPTION) return false
        def previous = scriptFile
        def previousSnapshot = fileSnapshot
        scriptFile = destination
        fileSnapshot = TemporaryScript.fingerprint(destination)
        if (fileSave(event)) return true
        scriptFile = previous
        fileSnapshot = previousSnapshot
        return false
    }

    @Override
    void loadScriptFile(File file) {
        // Read one stable UTF-8 snapshot before changing the editor or its association.
        try {
            def before = TemporaryScript.fingerprint(file)
            String text = TemporaryScriptStore.body(file, file.getText('UTF-8'))
            def after = TemporaryScript.fingerprint(file)
            if (!before || before != after) throw new IOException('The file changed while it was being read. Please reload it again.')
            scriptFile = file
            fileBaseline = text
            fileSnapshot = after
            inputArea.text = text
            def record = TemporaryScriptStore.read(file)
            if (record) {
                if (!temporaryScripts.any { it.file.canonicalPath == file.canonicalPath })
                    temporaryScripts.add(new TemporaryScript(file, record.created as Map))
                TemporaryScriptStore.acquire(file, this)
                temporaryReviewPending = true
            }
            temporaryScripts.find { it.file.canonicalPath == file.canonicalPath }?.readBack(text, after)
            if (tracking) refreshDirty() else super.setDirty(false)
            inputArea.caretPosition = 0
        } catch (Exception e) { showFileError(e) }
    }

    @Override
    boolean askToSaveFile() {
        if (closingApproved) return true
        if (!tracking) return super.askToSaveFile()
        if (scriptFile && TemporaryScript.fingerprint(scriptFile as File) != fileSnapshot) {
            if (JOptionPane.showOptionDialog(frame,
                    'The file has changed outside this console since its last read or save. It will be kept unless you explicitly overwrite it.',
                    'External file changes', JOptionPane.DEFAULT_OPTION, JOptionPane.WARNING_MESSAGE, null,
                    ['Keep file and continue', 'Cancel'] as Object[], 'Cancel') != 0) return false
        }
        if (nodeDirty()) {
            def answer = JOptionPane.showOptionDialog(frame, 'The script has changes not sent to its node.', 'Unsaved node changes',
                    JOptionPane.DEFAULT_OPTION, JOptionPane.WARNING_MESSAGE, null,
                    ['Send to node', 'Continue without sending', 'Cancel'] as Object[], 'Send to node')
            if (answer == 0) {
                GroovyConsole.write(this)
                if (nodeDirty()) return false
            } else if (answer != 1) return false
        }
        if (fileDirty() || (!scriptFile && nodeBaseline == null && !editorText().isEmpty())) {
            def answer = JOptionPane.showConfirmDialog(frame, 'Save changes to a file?', 'GroovyConsole', JOptionPane.YES_NO_CANCEL_OPTION)
            if (answer == JOptionPane.YES_OPTION) return fileSave()
            if (answer != JOptionPane.NO_OPTION) return false
        }
        true
    }

    @Override
    boolean exit(EventObject event = null) {
        if (!askToInterruptScript() || !askToSaveFile()) return false
        if (!cleanTemporaryFiles()) return false
        closingApproved = true
        try {
            boolean closed = super.exit(event)
            if (closed) TemporaryScriptStore.release(this)
            return closed
        } finally { closingApproved = false }
    }

    boolean cleanTemporaryFiles() {
        // Closing only schedules eligible owned files. Deletion requires the review window's Apply.
        for (temporary in temporaryScripts) {
            try {
                if (nodeBaseline != null && !nodeDirty() && temporary.canDelete(editorText()))
                    TemporaryScriptStore.schedule(temporary, retentionDays())
                else TemporaryScriptStore.cancel(temporary.file)
            } catch (Exception e) { showFileError(e); return false }
        }
        temporaryReviewPending = false
        refreshDirty()
        true
    }

    void showFileError(Exception e) {
        JOptionPane.showMessageDialog(frame, e.message, 'GroovyConsole', JOptionPane.ERROR_MESSAGE)
    }
}
