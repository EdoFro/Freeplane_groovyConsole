# Working on Freeplane add-ons

- Check Git status before editing and preserve existing changes. When continuing work from the project map, locate the relevant task and its prior decisions before changing code.
- Use the Freeplane MCP to maintain the add-on source map and the project map. Confirm which map is selected before editing it. Use the project map's existing branches for priorities, decisions, pending work, and manual test results.
- Add release notes under the matching version in the source map's `changes` node. Save the map in Freeplane and use **Package add-on for publication** to generate the versioned `.addon.mm`, `history.md`, and `version.properties`. Edit the release notes in `changes` and regenerate the history through packaging.
- Run the relevant automated checks. For behavior that needs Freeplane, provide a short manual test with the expected result. Record the version tested and distinguish manual results from automated results.
- Before a release commit, compare the generated release notes with the source map, check the version and compatibility metadata, and review which changes belong in the commit.
- When adapting an existing add-on to this Windows machine, use GroovyConsole's `groovyConsole/build.gradle` as a reference for locating the installed Freeplane libraries and configuring the `freeplaneDir` override. Check the target add-on's dependencies, tasks, and version requirements before adapting its build.

## GroovyConsole

- The versioned add-on source map is `groovyConsole/groovyConsole.mm`. Its root contains the version and `freeplaneVersionFrom`. The generated files are in `groovyConsole/`.
- The local organization map is `GroovyConsole project.mm` at the repository root. Start with its **Pendientes** branch when looking for tasks. The working copy of the map is ignored by Git.
- From `groovyConsole`, run `.\gradlew.bat check jar` on Windows. Use `--offline` once dependencies are cached. See [Build and test GroovyConsole](docs/BUILDING.md) for Java, Gradle, and the `freeplaneDir` override. The build uses Freeplane 1.13.5, and the add-on currently declares 1.13.3 as its minimum runtime version.
- Gradle's `check` runs `verifyEditor` and `verifyTemporaryScripts`. For editor or toolbar changes, verify the affected behavior in Freeplane as well. For file reload or history changes, check both the keyboard shortcuts and toolbar buttons after a reload and after a new edit.
- Maintain `README.MD` directly. `README-groovyConsole-MDH.mm` is a historical reference, not an active source: do not update it, synchronize it, or regenerate the README from it. Keep the historical file unless the user requests deletion.
