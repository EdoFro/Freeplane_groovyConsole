# Temporary scripts for IntelliJ

Prepare your IntelliJ scripting project using Freeplane's [installation and configuration guide](https://docs.freeplane.org/scripting/intellij-idea-setup.html#installation-and-configuration). Use a folder inside that configured project for the temporary scripts, so they can use its Freeplane library setup.

The **temporary .groovy** toolbar button creates a new UTF-8 file in the
**Temporary Groovy scripts folder** configured in the add-on preferences.
If the preference is empty, the button asks for a folder and remembers it.
After the first use, this button becomes **save temporary .groovy** and saves
the associated file just like normal Save. Repeated clicks do not create copies.
Use Save As when you intentionally want another file.
The filename comes from the original node's plain text. Invalid filename
characters are replaced and a numeric suffix prevents overwriting existing files.

The console becomes associated with this file. Use normal Save to update it,
edit it in IntelliJ, and use **reload from file** to bring external edits back.
The original node remains available through the send-to-node buttons.

Changes relative to the node and the file are tracked independently. Saving
the file does not clear unsaved node changes, and sending to the node does not
silently write the file. The status bar reports both states.
If the script has never been stored in a node, non-empty editor content remains
pending for that node even after a file save. Such a temporary is not scheduled
for cleanup until a node copy has been recorded and the other conditions hold.

Creating a temporary also marks the console dirty, even when the node text
has not changed. This indicates a pending review of the temporary on close.
Saving the file or sending to a node does not clear that review marker.
Closing compares the disk revision before scheduling cleanup; cancellation
keeps the marker active. The console warns about external disk changes.

On close, resolve unsaved changes first. The console automatically schedules
eligible files for cleanup, when their disk revision is still
unchanged since creation, or when the latest disk revision was reloaded and
the reloaded text was subsequently sent to a node. The current editor must
still match the file, with no pending changes relative to the node. Closing
does not delete files. Other files and externally changed files are retained.
Deleting a temporary does not save the mind map itself: save your map normally.

The retention period is configurable in **Temporary scripts retention (days)**,
initially 7. Each file has a `.freeplane-temp.json` sidecar in the same folder.
A generated comment records its origin map, node and creation time; the console
removes only that recognized header when loading, so it is not sent to the node.
Dates in this comment are context, not proof that the map contains a saved copy.

Opening a console checks the configured folder. If eligible files have expired,
an independent, non-modal review window lists them. Check files to **postpone**,
not to delete. **Apply** postpones checked files by the current configured period
from now, and deletes unchecked files. Results appear in that same window,
without a blocking dialog. Closing the review
without applying preserves every file. No window appears when nothing is due.
When another console opens, an existing review window refreshes its candidates
and preserves checked choices for unchanged files. This also re-enables Apply
after a previous batch when new candidates become available.

Opening/reloading or saving a managed file cancels its pending cleanup. An
external disk change also cancels it when detected. Apply rechecks the file
revision and preserves changed files and files used by another console. It never
deletes old temporary files without a valid sidecar from this implementation.
Unsaved IntelliJ buffers and moved-map tracking are intentionally outside scope.

## Validation

Run `gradlew.bat --offline verifyTemporaryScripts jar` from `groovyConsole`.
The checks use a separate temporary directory and do not change a Freeplane
profile. The standard Gradle `check` task also runs them.

Before release, verify these interactions with the new JAR in Freeplane:

1. Open from a node, edit, create a temporary, and confirm the node remains dirty.
2. Save normally, send to the original node, and check the two status indicators.
3. Edit in IntelliJ, reload, send to a node, close, and check the sidecar deadline.
4. Modify the file externally after reload: close must retain that file.
5. Use expired test files to verify the review window: checked files postpone;
   unchecked files delete only after Apply; closing without Apply preserves all.
6. Cancel the folder picker and test an unwritable folder without losing editor text.
7. Regenerate the add-on using the source map, keeping the description plain text.

The JAR is built against the isolated Freeplane 1.13.3 distribution, with
Groovy 4.0.27. No automatic IntelliJ launch or automatic add-on installation
is performed.
Set `freeplaneDir` in a local `gradle.properties` copied from
`gradle.properties.example`, or pass `-PfreeplaneDir=...`. The Freeplane
libraries are fixed to 1.13.3. Use Java 17 with the Gradle 8.0 Wrapper.
The minimum selected for v0.0.9 is Freeplane 1.13.3; an installed-package
smoke test there is still pending before publication.
