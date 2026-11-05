package edofro.groovyconsole

import java.nio.file.Files
import java.nio.file.StandardCopyOption
import java.time.Instant
import java.time.temporal.ChronoUnit

/** A sidecar is authoritative for ownership; a comment alone never authorizes deletion. */
class TemporaryScriptStore {
    static final String SUFFIX = '.freeplane-temp.json'
    static final String HEADER = '// @freeplane-groovyconsole '
    static final Map<String, Set<Object>> active = [:]

    static File sidecar(File file) { new File(file.parentFile, file.name + SUFFIX) }

    static Map read(File file) {
        try {
            def record = TemporaryScriptJson.parse(sidecar(file).getText('UTF-8'))
            if (record instanceof Map && record.version == 1 && record.fileName == file.name && record.id && record.created) return record
        } catch (Exception ignored) { }
        null
    }

    static void write(File file, Map record) {
        def target = sidecar(file).toPath()
        def staging = Files.createTempFile(file.parentFile.toPath(), '.freeplane-temp-', '.json')
        try {
            Files.write(staging, TemporaryScriptJson.encode(record).getBytes('UTF-8'))
            try { Files.move(staging, target, StandardCopyOption.ATOMIC_MOVE, StandardCopyOption.REPLACE_EXISTING) }
            catch (java.nio.file.AtomicMoveNotSupportedException ignored) { Files.move(staging, target, StandardCopyOption.REPLACE_EXISTING) }
        } finally { Files.deleteIfExists(staging) }
    }

    static void register(TemporaryScript temporary, Map origin, Instant now = Instant.now()) {
        write(temporary.file, [version:1, id:UUID.randomUUID().toString(), fileName:temporary.file.name,
              created:temporary.created, createdAt:now.toString(), origin:origin])
    }

    static String header(File file) {
        def record = read(file)
        record ? HEADER + TemporaryScriptJson.encode([id:record.id, origin:record.origin, createdAt:record.createdAt]) + '\n' : ''
    }

    static String body(File file, String text) {
        text = text.replace('\r\n', '\n').replace('\r', '\n')
        def record = read(file)
        if (record && text.startsWith(HEADER)) {
            int end = text.indexOf('\n')
            if (end >= 0) {
                try {
                    def metadata = TemporaryScriptJson.parse(text.substring(HEADER.length(), end).trim())
                    if (metadata.id == record.id) return text.substring(end + 1)
                } catch (Exception ignored) { }
            }
        }
        text
    }

    static void cancel(File file) {
        def record = read(file)
        if (record && record.dueAt) {
            record.remove('dueAt'); record.remove('scheduled'); record.remove('markedAt')
            write(file, record)
        }
    }

    static void acquire(File file, Object owner) {
        cancel(file)
        synchronized (active) {
            String key = file.canonicalPath
            if (!active[key]) active[key] = new HashSet<Object>()
            active[key].add(owner)
        }
    }

    static void release(Object owner) {
        synchronized (active) {
            active.values().each { it.remove(owner) }
            active.entrySet().removeAll { it.value.empty }
        }
    }

    static boolean inUse(File file) {
        synchronized (active) { return active[file.canonicalPath]?.size() > 0 }
    }

    static void schedule(TemporaryScript temporary, int days, Instant now = Instant.now()) {
        def record = read(temporary.file)
        def stamp = TemporaryScript.fingerprint(temporary.file)
        if (!record || !stamp) return
        record.markedAt = now.toString()
        record.dueAt = now.plus(Math.max(1, days), ChronoUnit.DAYS).toString()
        record.scheduled = stamp
        write(temporary.file, record)
    }

    static List<Map> due(File directory, Instant now = Instant.now()) {
        def rows = []
        if (!directory?.isDirectory()) return rows
        directory.eachFile { file ->
            if (!file.name.endsWith(SUFFIX)) return
            String scriptName = file.name.substring(0, file.name.length() - SUFFIX.length())
            if (!scriptName.endsWith('.groovy')) return
            File script = new File(directory, scriptName)
            def record = read(script)
            if (!record?.dueAt) return
            try {
                def stamp = TemporaryScript.fingerprint(script)
                if (!stamp || stamp != record.scheduled) { cancel(script); return }
                if (inUse(script)) return
                if (!Instant.parse(record.dueAt.toString()).isAfter(now))
                    rows.add([file:script, id:record.id, dueAt:record.dueAt, scheduled:record.scheduled])
            } catch (Exception ignored) { /* Keep unverifiable files. */ }
        }
        rows.sort { it.dueAt }
    }

    static String apply(Map row, boolean postpone, int days, Instant now = Instant.now()) {
        File file = row.file as File
        def record = read(file)
        if (!record || record.id != row.id || record.dueAt != row.dueAt || inUse(file)) return 'kept'
        def current = TemporaryScript.fingerprint(file)
        if (!current || current != row.scheduled || current != record.scheduled) { cancel(file); return 'changed' }
        if (Instant.parse(record.dueAt.toString()).isAfter(now)) return 'kept'
        if (postpone) {
            record.dueAt = now.plus(Math.max(1, days), ChronoUnit.DAYS).toString()
            write(file, record)
            return 'postponed'
        }
        Files.delete(file.toPath())
        Files.deleteIfExists(sidecar(file).toPath())
        'deleted'
    }
}
