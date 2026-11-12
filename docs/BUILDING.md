# Build and test GroovyConsole

1. Use Java 17 and the included Gradle 8.0 Wrapper.
2. Install Freeplane **1.13.5**. On Windows, Gradle defaults to `%LOCALAPPDATA%/Programs/Freeplane`.
3. From `groovyConsole`, run `gradlew.bat check jar`. Once Maven dependencies are cached, you can add `--offline`.

The build checks for the expected Freeplane 1.13.5 JARs and uses Groovy 4.0.27. The add-on declares Freeplane **1.13.3** as its minimum runtime version.

## Use a different Freeplane directory

Copy `groovyConsole/gradle.properties.example` to `groovyConsole/gradle.properties` and set `freeplaneDir`. Git ignores this local file. Relative paths are resolved from `groovyConsole`. For a one-time override, run the following command from that folder.

```powershell
.\gradlew.bat check jar "-PfreeplaneDir=C:/path/to/Freeplane"
```

## Automated checks

- `verifyEditor` covers completion, inference, comments, indentation, and Undo/Redo with highlighting enabled. It requires a graphical environment and runs without opening Freeplane.
- `verifyTemporaryScripts` covers the temporary file lifecycle, including independent node and file save states, external edits, filename collisions, cleanup, and metadata.

Both tasks run as part of `check`.
