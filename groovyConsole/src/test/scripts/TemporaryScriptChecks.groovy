import edofro.groovyconsole.TemporaryScript
import java.nio.file.Files
import java.nio.file.attribute.FileTime
import edofro.groovyconsole.TemporaryScriptConsole
import edofro.groovyconsole.TemporaryScriptStore
import edofro.groovyconsole.TemporaryScriptCleanupWindow
import edofro.groovyconsole.TemporaryScriptJson
import java.time.Instant
import java.time.temporal.ChronoUnit
import org.codehaus.groovy.control.CompilerConfiguration
import javax.swing.AbstractAction
import javax.swing.JLabel
import javax.swing.JTextPane

// Exercise the real console methods without opening windows or using Freeplane's profile.
class TestConsole extends TemporaryScriptConsole {
    File testDirectory
    TestConsole(File directory) {
        super(new Binding([initialNode: new Expando(plainText: 'Original node', text: 'Original node')]), new CompilerConfiguration())
        testDirectory = directory
        inputArea = new JTextPane()
        statusLabel = new JLabel()
        saveAction = new AbstractAction() { void actionPerformed(java.awt.event.ActionEvent event) {} }
    }
    @Override void updateTitle() {}
    @Override File chooseTemporaryDirectory() { testDirectory }
    @Override int retentionDays() { 7 }
    @Override void showFileError(Exception error) { throw error }
}

def directory = Files.createTempDirectory(new File(args[0]).toPath(), 'temporary-scripts-').toFile()
int checks = 0
def verify = { boolean value -> assert value; checks++ }
try {
    // Reproduce Freeplane's missing service discovery before any JSON service has initialized.
    def originalLoader = Thread.currentThread().contextClassLoader
    def serviceBlindLoader = new URLClassLoader(new URL[0], (ClassLoader) null)
    try {
        Thread.currentThread().contextClassLoader = serviceBlindLoader
        try {
            org.apache.groovy.json.internal.FastStringUtils.toCharArray('probe')
            assert false: 'Expected the missing FastStringService failure'
        } catch (RuntimeException expected) {
            verify(expected.message == 'Unable to load FastStringService')
        }
    } finally {
        Thread.currentThread().contextClassLoader = originalLoader
        serviceBlindLoader.close()
    }
    // All lifecycle checks below now run with FastStringService permanently unavailable.
    def metadata = [version:1, origin:[text:'á "quoted" \\ path\nline\t\u2028😀', empty:'', missing:null], values:[true,false,7]]
    verify(TemporaryScriptJson.parse(TemporaryScriptJson.encode(metadata)) == metadata)
    verify(!TemporaryScriptJson.encode(metadata).contains('\n'))
    verify(TemporaryScriptJson.parse('{\n "version": 1, "origin": null\n}') == [version:1, origin:null])
    def iconResource = TemporaryScriptConsole.getResource('/icons/groovyConsole/temporaryScript.svg')
    verify(iconResource != null)
    iconResource.openStream().withCloseable { stream ->
        verify(new groovy.xml.XmlSlurper().parse(stream).name() == 'svg')
    }
    def first = TemporaryScript.create(directory, 'Mi nodo: prueba / IntelliJ?', 'println "á"\n')
    verify(first.file.name == 'Mi nodo_ prueba _ IntelliJ_.groovy')
    verify(TemporaryScriptStore.body(first.file, first.file.getText('UTF-8')) == 'println "á"\n')
    verify(first.canDelete('println "á"\n'))
    verify(!first.canDelete('unsaved editor changes'))
    def second = TemporaryScript.create(directory, 'Mi nodo: prueba / IntelliJ?', 'other script')
    verify(first.file != second.file && TemporaryScriptStore.body(first.file, first.file.getText('UTF-8')) == 'println "á"\n')
    def reserved = TemporaryScript.create(directory, 'CON', 'reserved')
    verify(reserved.file.name == 'script_CON.groovy')

    first.file.setText('external edit', 'UTF-8')
    verify(!first.canDelete('external edit'))
    first.savedInNode('external edit')
    verify(!first.canDelete('external edit')) // A node save without reloading is insufficient.
    first.readBack('external edit', TemporaryScript.fingerprint(first.file))
    verify(!first.canDelete('external edit')) // Reload must be followed by a node save.
    first.savedInNode('external edit')
    verify(first.canDelete('external edit'))
    verify(!first.canDelete('changed again in editor'))
    first.file.setText('another external edit', 'UTF-8')
    verify(!first.canDelete('external edit'))
    first.file.setText('external edit', 'UTF-8')
    Files.setLastModifiedTime(first.file.toPath(), FileTime.fromMillis(System.currentTimeMillis() + 5000))
    verify(!first.canDelete('external edit')) // Same contents with a later disk revision.
    first.readBack('external edit', TemporaryScript.fingerprint(first.file))
    verify(!first.canDelete('external edit')) // Previous node save does not cover a new read.
    first.savedInNode('external edit')
    verify(first.canDelete('external edit'))
    first.file.delete()
    verify(!first.canDelete('external edit'))

    def console = new TestConsole(directory)
    console.inputArea.text = 'original node content'
    console.startTracking('note')
    verify(!console.dirty)
    console.inputArea.text = 'modified node content'
    console.setDirty(true)
    verify(console.nodeDirty() && console.dirty)
    console.saveTemporaryScript()
    verify(console.nodeDirty() && console.dirty && !console.fileDirty())
    verify(TemporaryScriptStore.body(console.scriptFile as File, console.scriptFile.getText('UTF-8')) == 'modified node content')
    console.inputArea.text = 'saved to file only'
    console.setDirty(true)
    verify(console.fileSave())
    verify(console.nodeDirty() && console.dirty && !console.fileDirty())
    console.savedInNode(console.inputArea.text, 'Original node')
    verify(!console.nodeDirty() && !console.fileDirty() && console.dirty && console.temporaryReviewPending)
    console.inputArea.text = 'saved to node only'
    console.savedInNode(console.inputArea.text, 'Original node')
    verify(!console.nodeDirty() && console.fileDirty() && console.dirty)
    console.scriptFile.setText('from IntelliJ', 'UTF-8')
    console.loadScriptFile(console.scriptFile as File)
    verify(console.inputArea.text == 'from IntelliJ' && console.nodeDirty() && !console.fileDirty())
    verify(!console.temporaryScripts[0].canDelete('from IntelliJ'))
    console.savedInNode('from IntelliJ', 'Original node')
    verify(console.temporaryScripts[0].canDelete('from IntelliJ'))
    def associatedFile = console.scriptFile
    console.temporaryButton = new javax.swing.JButton()
    console.inputArea.text = 'saved again through temporary button'
    console.saveTemporaryScript()
    verify(console.temporaryScripts.size() == 1 && console.scriptFile == associatedFile)
    verify(TemporaryScriptStore.body(associatedFile as File, associatedFile.getText('UTF-8')) == 'saved again through temporary button')
    verify(console.nodeDirty() && console.dirty && !console.fileDirty())
    verify(console.temporaryButton.text == 'save temporary .groovy')
    console.loadScriptFile(associatedFile as File)
    console.savedInNode(console.inputArea.text, 'Original node')
    // Retain coverage of Cancel across multiple owned files (e.g. after File > New).
    console.temporaryScripts.add(TemporaryScript.create(directory, 'Another script', console.inputArea.text))
    verify(!console.nodeDirty() && !console.fileDirty() && console.dirty && console.temporaryReviewPending)
    verify(console.cleanTemporaryFiles())
    verify(console.temporaryScripts.every { it.file.exists() })
    verify(console.temporaryScripts.every { TemporaryScriptStore.read(it.file).dueAt != null })
    TemporaryScriptStore.release(console)
    def unchangedConsole = new TestConsole(directory)
    unchangedConsole.inputArea.text = 'unchanged node script'
    unchangedConsole.startTracking('note')
    verify(!unchangedConsole.dirty)
    unchangedConsole.saveTemporaryScript()
    verify(unchangedConsole.dirty && !unchangedConsole.nodeDirty() && !unchangedConsole.fileDirty())
    verify(unchangedConsole.temporaryReviewPending)
    unchangedConsole.fileSave()
    verify(unchangedConsole.dirty && unchangedConsole.temporaryReviewPending)
    verify(unchangedConsole.cleanTemporaryFiles())
    verify(!unchangedConsole.temporaryReviewPending && !unchangedConsole.dirty)
    verify(unchangedConsole.scriptFile.exists())
    TemporaryScriptStore.release(unchangedConsole)

    // A new script has no saved node baseline: a file save must not hide that state.
    def newScript = new TestConsole(directory)
    newScript.startTracking(null)
    verify(!newScript.nodeDirty())
    newScript.inputArea.text = 'println "not yet saved in a node"'
    newScript.setDirty(true)
    verify(newScript.nodeDirty() && newScript.dirty)
    newScript.saveTemporaryScript()
    verify(newScript.nodeDirty() && !newScript.fileDirty())
    verify(newScript.cleanTemporaryFiles())
    verify(!TemporaryScriptStore.read(newScript.scriptFile as File).dueAt)
    verify(newScript.scriptFile.exists())
    newScript.savedInNode(newScript.editorText(), 'Destination node')
    verify(!newScript.nodeDirty())
    verify(newScript.cleanTemporaryFiles())
    verify(TemporaryScriptStore.read(newScript.scriptFile as File).dueAt != null)
    TemporaryScriptStore.release(newScript)

    def now = Instant.parse('2030-01-01T00:00:00Z')
    def managed = TemporaryScript.create(directory, 'review', 'println 123', [map:'C:/test.mm',nodeId:'ID_1',nodeText:'A\nB'])
    verify(managed.file.getText('UTF-8').startsWith(TemporaryScriptStore.HEADER))
    verify(TemporaryScriptStore.body(managed.file, managed.file.getText('UTF-8')) == 'println 123')
    verify(TemporaryScriptStore.read(managed.file).origin.nodeId == 'ID_1')
    TemporaryScriptStore.schedule(managed, 7, now)
    verify(!TemporaryScriptStore.due(directory, now.plus(6, ChronoUnit.DAYS)).any { it.file == managed.file })
    def row = TemporaryScriptStore.due(directory, now.plus(7, ChronoUnit.DAYS)).find { it.file == managed.file }
    verify(row != null)
    // Merely listing candidates, or closing the review without Apply, changes nothing.
    def deadline = TemporaryScriptStore.read(managed.file).dueAt
    TemporaryScriptStore.due(directory, now.plus(8, ChronoUnit.DAYS))
    verify(managed.file.exists() && TemporaryScriptStore.read(managed.file).dueAt == deadline)
    verify(TemporaryScriptStore.apply(row, true, 3, now.plus(8, ChronoUnit.DAYS)) == 'postponed')
    verify(TemporaryScriptStore.read(managed.file).dueAt == now.plus(11, ChronoUnit.DAYS).toString())
    verify(TemporaryScriptStore.apply(row, false, 7, now.plus(12, ChronoUnit.DAYS)) == 'kept') // stale form
    row = TemporaryScriptStore.due(directory, now.plus(11, ChronoUnit.DAYS)).find { it.file == managed.file }
    verify(TemporaryScriptStore.apply(row, false, 7, now.plus(11, ChronoUnit.DAYS)) == 'deleted')
    verify(!managed.file.exists() && !TemporaryScriptStore.sidecar(managed.file).exists())

    def changed = TemporaryScript.create(directory, 'changed externally', 'before')
    TemporaryScriptStore.schedule(changed, 7, now)
    row = TemporaryScriptStore.due(directory, now.plus(8, ChronoUnit.DAYS)).find { it.file == changed.file }
    changed.file.setText('after', 'UTF-8')
    verify(TemporaryScriptStore.apply(row, false, 7, now.plus(8, ChronoUnit.DAYS)) == 'changed')
    verify(changed.file.getText('UTF-8') == 'after' && !TemporaryScriptStore.read(changed.file).dueAt)

    def reopened = TemporaryScript.create(directory, 'reopened', 'code')
    TemporaryScriptStore.schedule(reopened, 7, now)
    def owner = new Object()
    TemporaryScriptStore.acquire(reopened.file, owner)
    verify(!TemporaryScriptStore.read(reopened.file).dueAt)
    verify(TemporaryScriptStore.inUse(reopened.file))
    verify(!TemporaryScriptStore.due(directory, now.plus(8, ChronoUnit.DAYS)).any { it.file == reopened.file })
    TemporaryScriptStore.release(owner)
    verify(!TemporaryScriptStore.inUse(reopened.file))
    def restartedRecord = TemporaryScriptStore.read(reopened.file)
    verify(new TemporaryScript(reopened.file, restartedRecord.created as Map).canDelete('code'))
    TemporaryScriptStore.schedule(reopened, 7, now)
    row = TemporaryScriptStore.due(directory, now.plus(8, ChronoUnit.DAYS)).find { it.file == reopened.file }
    def busyOwner = new Object()
    TemporaryScriptStore.acquire(reopened.file, busyOwner)
    verify(TemporaryScriptStore.apply(row, false, 7, now.plus(8, ChronoUnit.DAYS)) == 'kept')
    TemporaryScriptStore.release(busyOwner)
    def crlf = TemporaryScript.create(directory, 'Windows line endings', 'println 1\nprintln 2\n')
    crlf.file.setText(crlf.file.getText('UTF-8').replace('\n', '\r\n'), 'UTF-8')
    def normalized = TemporaryScriptStore.body(crlf.file, crlf.file.getText('UTF-8'))
    verify(normalized == 'println 1\nprintln 2\n')
    crlf.readBack(normalized, TemporaryScript.fingerprint(crlf.file))
    crlf.savedInNode(normalized)
    verify(crlf.canDelete(normalized))

    if (!java.awt.GraphicsEnvironment.isHeadless()) {
        javax.swing.SwingUtilities.invokeAndWait {
            TemporaryScriptCleanupWindow.show(directory, { 7 })
            verify(!TemporaryScriptCleanupWindow.windows[directory.canonicalPath]?.displayable)
            def expired = TemporaryScript.create(directory, 'Expired UI example', 'println "UI"')
            TemporaryScriptStore.schedule(expired, 7, Instant.now().minus(8, ChronoUnit.DAYS))
            def beforeReview = TemporaryScriptStore.read(expired.file).dueAt
            TemporaryScriptCleanupWindow.show(directory, { 7 })
            def window = TemporaryScriptCleanupWindow.windows[directory.canonicalPath]
            try {
                verify(window.visible && !(window instanceof javax.swing.JDialog))
                def pane = window.contentPane.components.find { it instanceof javax.swing.JScrollPane }
                def table = pane.viewport.view
                verify(table.rowCount == 1 && table.model.getColumnClass(0) == Boolean)
                verify(table.model.getValueAt(0, 0) == false)
                table.model.setValueAt(true, 0, 0)
                def image = new java.awt.image.BufferedImage(window.width, window.height, java.awt.image.BufferedImage.TYPE_INT_ARGB)
                def graphics = image.createGraphics()
                try { window.paintAll(graphics) } finally { graphics.dispose() }
                javax.imageio.ImageIO.write(image, 'png', new File(args[0], 'temporary-cleanup-review.png'))
            } finally { window.dispose() }
            verify(expired.file.exists() && TemporaryScriptStore.read(expired.file).dueAt == beforeReview)
            def unchecked = TemporaryScript.create(directory, 'Unchecked deletion example', 'delete this test file')
            TemporaryScriptStore.schedule(unchecked, 7, Instant.now().minus(8, ChronoUnit.DAYS))
            TemporaryScriptCleanupWindow.show(directory, { 3 })
            def applyWindow = TemporaryScriptCleanupWindow.windows[directory.canonicalPath]
            try {
                def pane = applyWindow.contentPane.components.find { it instanceof javax.swing.JScrollPane }
                def table = pane.viewport.view
                int rowToPostpone = (0..<table.model.rowCount).find { table.model.getValueAt(it, 1) == expired.file.name }
                table.model.setValueAt(true, rowToPostpone, 0)
                def footer = applyWindow.contentPane.components.find { it instanceof javax.swing.JPanel }
                def buttons = footer.components.find { it instanceof javax.swing.JPanel }
                def apply = buttons.components.find { it instanceof javax.swing.JButton && it.text == 'Apply' }
                def appliedAt = Instant.now()
                apply.doClick()
                verify(expired.file.exists() && !unchecked.file.exists())
                verify(Instant.parse(TemporaryScriptStore.read(expired.file).dueAt.toString()).isAfter(appliedAt.plus(3, ChronoUnit.DAYS)))
                verify(!apply.enabled && table.model.rowCount == 0)
                // Reuse the still-open completed window when a new console finds more candidates.
                def later = TemporaryScript.create(directory, 'Later candidate', 'later')
                TemporaryScriptStore.schedule(later, 7, Instant.now().minus(8, ChronoUnit.DAYS))
                TemporaryScriptCleanupWindow.show(directory, { 3 })
                verify(TemporaryScriptCleanupWindow.windows[directory.canonicalPath].is(applyWindow))
                verify(table.model.rowCount == 1 && apply.enabled)
                verify(table.model.getValueAt(0, 1) == later.file.name)
                table.model.setValueAt(true, 0, 0)
                def newest = TemporaryScript.create(directory, 'Newest candidate', 'newest')
                TemporaryScriptStore.schedule(newest, 7, Instant.now().minus(8, ChronoUnit.DAYS))
                TemporaryScriptCleanupWindow.show(directory, { 3 })
                verify(table.model.rowCount == 2)
                int preservedRow = (0..<table.model.rowCount).find { table.model.getValueAt(it, 1) == later.file.name }
                verify(table.model.getValueAt(preservedRow, 0) == true)
                int addedRow = (0..<table.model.rowCount).find { table.model.getValueAt(it, 1) == newest.file.name }
                verify(table.model.getValueAt(addedRow, 0) == false)
                apply.doClick()
                verify(later.file.exists() && !newest.file.exists())
                verify(!apply.enabled && table.model.rowCount == 0)
            } finally { applyWindow.dispose() }
        }
    }
    println "PASS: ${checks} temporary script lifecycle checks"
} finally {
    directory.eachFile { Files.deleteIfExists(it.toPath()) }
    Files.delete(directory.toPath())
}
