package edofro.groovyconsole

import groovy.json.JsonSlurperClassic

/** Sidecar JSON without Groovy's service-loaded FastStringService (unavailable on some OSGi threads). */
class TemporaryScriptJson {
    static Object parse(String text) { new JsonSlurperClassic().parseText(text) }

    static String encode(Object value) {
        if (value == null) return 'null'
        if (value instanceof Boolean || value instanceof Number) return value.toString()
        if (value instanceof Map) return '{' + value.collect { key, item -> quote(key.toString()) + ':' + encode(item) }.join(',') + '}'
        if (value instanceof Collection) return '[' + value.collect { encode(it) }.join(',') + ']'
        if (value instanceof CharSequence) return quote(value.toString())
        throw new IllegalArgumentException('Unsupported temporary metadata value: ' + value.getClass().name)
    }

    static String quote(String value) {
        def out = new StringBuilder('"')
        for (int i = 0; i < value.length(); i++) {
            int character = value.charAt(i) as int
            if (character == 34) out.append('\\"')
            else if (character == 92) out.append('\\\\')
            else if (character < 32 || character > 126)
                out.append('\\u').append(Integer.toHexString(character).padLeft(4, '0'))
            else out.append((char) character)
        }
        out.append('"').toString()
    }
}
