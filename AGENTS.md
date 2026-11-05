# Project conventions

- Use the Freeplane MCP to maintain project and add-on source maps.
- The add-on generator for `groovyConsole/groovyConsole.mm` automatically generates the history file (`groovyConsole/history.md`) from that map's `changes` node.
- Update version history only in the source map's `changes` node. Do not edit the generated history file manually.
- Maintain `README.MD` directly. `README-groovyConsole-MDH.mm` is a historical reference, not an active source: do not update it, synchronize it, or regenerate the README from it. Keep the historical file unless the user requests deletion.
