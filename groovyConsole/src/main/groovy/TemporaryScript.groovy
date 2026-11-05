package edofro.groovyconsole

import java.nio.file.Files
import java.nio.file.LinkOption
import java.nio.file.StandardOpenOption
import java.nio.file.attribute.BasicFileAttributes
import java.security.MessageDigest

/** Ownership and read history for one file created by this console. */
class TemporaryScript {
    final File file
    final Map created
    Map loaded
    String loadedText
    String nodeSavedText

    TemporaryScript(File file, Map initial = null) {
        this.file = file.canonicalFile
        created = initial ?: fingerprint(this.file)
    }

    static Map fingerprint(File file) {
        def path = file.toPath()
        if (Files.isSymbolicLink(path) || !Files.isRegularFile(path, LinkOption.NOFOLLOW_LINKS)) return null
        def before = Files.readAttributes(path, BasicFileAttributes, LinkOption.NOFOLLOW_LINKS)
        def bytes = Files.readAllBytes(path)
        def after = Files.readAttributes(path, BasicFileAttributes, LinkOption.NOFOLLOW_LINKS)
        if (before.lastModifiedTime() != after.lastModifiedTime() || before.fileKey() != after.fileKey() || before.size() != after.size()) return null
        [hash: MessageDigest.getInstance('SHA-256').digest(bytes).encodeHex().toString(),
         modified: after.lastModifiedTime().toString(), created: after.creationTime().toString(), key: after.fileKey()?.toString(), size: after.size().toString()]
    }

    void readBack(String text, Map snapshot) {
        loaded = snapshot
        loadedText = text
        nodeSavedText = null
    }

    void savedInNode(String text) {
        nodeSavedText = text
    }

    boolean canDelete(String editorText) {
        def current = fingerprint(file)
        if (!current || !created || current.key != created.key || current.created != created.created) return false
        def diskText = TemporaryScriptStore.body(file, file.getText('UTF-8'))
        if (fingerprint(file) != current) return false
        if (editorText != diskText) return false
        current == created || (loaded != null && current == loaded && loadedText == editorText && nodeSavedText == editorText)
    }

    static TemporaryScript create(File directory, String nodeText, String text, Map origin = [:]) {
        String stem = (nodeText ?: 'script').replaceAll('[\\x00-\\x1f<>:"/\\\\|?*]', '_').trim().replaceAll('[. ]+$', '')
        stem = stem.replaceFirst('(?i)\\.groovy$', '').take(100)
        if (!stem || stem ==~ /(?i)(CON|PRN|AUX|NUL|COM[1-9]|LPT[1-9])(?:\..*)?/) stem = 'script_' + stem
        for (int i = 0; ; i++) {
            def candidate = new File(directory, stem + (i ? "-${i}" : '') + '.groovy')
            try {
                Files.write(candidate.toPath(), text.getBytes('UTF-8'), StandardOpenOption.CREATE_NEW, StandardOpenOption.WRITE)
                def temporary = new TemporaryScript(candidate)
                TemporaryScriptStore.register(temporary, origin)
                candidate.setText(TemporaryScriptStore.header(candidate) + text, 'UTF-8')
                // The owned revision includes the generated header.
                temporary = new TemporaryScript(candidate)
                def record = TemporaryScriptStore.read(candidate)
                record.created = temporary.created
                TemporaryScriptStore.write(candidate, record)
                return temporary
            } catch (java.nio.file.FileAlreadyExistsException ignored) {
                // Reserve the name atomically; another console may be saving too.
            }
        }
    }
}
