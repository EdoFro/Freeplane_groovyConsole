# History

## v0.0.9

* Added temporary .groovy files for editing scripts in IntelliJ, with a configurable folder, UTF-8 encoding and unique names based on the original node.
* After creating a temporary, the toolbar button and normal Save update the associated file instead of creating another copy; sending to the original node remains available.
* Track node changes, file changes and pending temporary review independently, with warnings for unsaved node/file changes and external file modifications.
* Added an embedded SVG toolbar icon and an origin comment containing the source map, node and creation details; generated metadata is excluded when sending the script to a node.
* Automatically schedule eligible temporary files for deferred cleanup using sidecar metadata in the same folder. Retention defaults to 7 days and is configurable.
* Added a non-modal review window for expired files when opening a console: checked files are postponed by the configured period, unchecked files are deleted only on Apply, and closing without applying keeps every file.
* Cancel pending cleanup on reuse or detected external changes; preserve files in use, changed since review, or lacking valid ownership metadata.
* Fixed temporary metadata creation in Freeplane when Groovy's FastStringService is unavailable; retained compatibility with existing JSON sidecars.
* Updated the build to Groovy 4.0.27 and an isolated Freeplane 1.13.3 dependency distribution; added automated lifecycle and cleanup-window checks.
* Fixed new scripts without a node copy being treated as saved and scheduled for cleanup; they now remain pending until saved to a node.
* Refresh an existing expired-files review window when opening another console, including after Apply; preserve checked choices for unchanged candidates.
* Keep the Gradle Wrapper bootstrap JAR available for version control while continuing to ignore generated JARs. Added regression coverage; 94 checks pass.
* Set the selected minimum Freeplane version to 1.13.3; installed-package smoke validation on that minimum is pending before publication.
* Configure the Freeplane library folder through freeplaneDir in an ignored local gradle.properties or a command-line -P override. Include a settings example, validate required libraries early, and use exact Freeplane 1.13.3 library files instead of dynamic dependencies.

## v0.0.8

* added 'ReloadFromFile' icon
* added addon's images
* retain white inputArea also for Dark themes

## v0.0.7

* improved reload confirm dialog
* minor changes to work project in Intellij Idea

## v0.0.6

* Added a command to call groovyConsole without restrictions
* Added button to reload script from disk.
* Now it can handle absolute and relative links to script files

## v0.0.5

* Changed 'freeplaneVersionFrom' to a lower number, because I realized it worked in v1.9 versions too

## v0.0.4

* Added preference's parameters for Option Panel
 - show button's labels
 - default write to destination

## v0.0.3

* bug corrections
* Added button 'starts System.out interceptor':
it restarts the systemOutInterceptor so that print() and println() get written in the log file or the console

## v0.0.2

* Added "GroovyScript plugin" 's compiler configuration:
It adds access to Freeplane's and add-ons libraries
* Added button to refresh Compiler Configuration
* Added console.systemOutInterceptor.start() to capture print() and println() in the output console or the log.0 file

## v0.0.1

* Initial release
