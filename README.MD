-----

# New Groovy Console for Freeplane

A groovy console that runs on groovy 4 and java 17 to replace wikdshell add-on

-----

## 1. about "groovyConsole add-on"

groovyConsole is an add-on for Freeplane that opens a Groovy Console and works with Groovy 4 and can be used with the new versions of Freeplane.

![groovyConsole_001.png](https://github.com/EdoFro/Freeplane_groovyConsole/blob/main/resources/groovyConsole_001.png)

<details><summary><h3>1.1. Additional features:</h3></summary>

- It has access to the Freeplane API so it can interact with nodes and maps
- It can load / save script files to be used with Freeplane
- It can 'save' scripts as node's notes or attributes
- If you select a node that has a script and then you open the groovy console, the script will be automatically loaded in the console editor
- You can edit the script and 'save' it back to the node
- You can choose if you want to save the script in its original node or into the currently selected one
   - ![groovyConsole_002.png](https://github.com/EdoFro/Freeplane_groovyConsole/blob/main/resources/groovyConsole_002.png)
- You can choose if you want to 'save' it as a note or as 'script1' attribute
   - ![groovyConsole_003.png](https://github.com/EdoFro/Freeplane_groovyConsole/blob/main/resources/groovyConsole_003.png)

The script stays in the map, so you don't need to have multiple files for you short scripts

![groovyConsole_004.png](https://github.com/EdoFro/Freeplane_groovyConsole/blob/main/resources/groovyConsole_004.png)

</details>
<details><summary><h3>1.2. Additional buttons</h3></summary>

|Button|Label|Description|
|----|----|----|
|![saveInNode.png](https://github.com/EdoFro/Freeplane_groovyConsole/blob/main/resources/saveInNode.png)|Send to node|Save script into node|
|![saveInNodeAs.png](https://github.com/EdoFro/Freeplane_groovyConsole/blob/main/resources/saveInNodeAs.png)|Config + send to node|Select options and save script into node|
|![groovyConsole_007.png](https://github.com/EdoFro/Freeplane_groovyConsole/blob/main/resources/groovyConsole_007.png)|Refresh Compiler Config|Refreshes the Freeplane's **GroovyScript Compiler Configuration**<br>(libraries included)|
|![groovyConsole_008.png](https://github.com/EdoFro/Freeplane_groovyConsole/blob/main/resources/groovyConsole_008.png)|Starts System.out interceptor|Restarts the ```systemOutInterceptor``` so that ```print()``` and ```println()``` get written in the log file or the console.<br>Use '**View / Capture Standard Output**' to direct the output to the console or to Freeplane's *log.0* file|
|![reloadFile.png](https://github.com/EdoFro/Freeplane_groovyConsole/blob/main/resources/reloadFile.png)|Reloads script from file|Reloads script from file into the editor pane in Groovy Console.<br>This is useful, for example, when you want to discard all changes or when you are editing the script with an IDE like IntelliJ but want to test the script with the Groovy Console.|

</details>
<details><summary><h3>1.3. Add-on configuration</h3></summary>

![groovyConsole_009.png](https://github.com/EdoFro/Freeplane_groovyConsole/blob/main/resources/groovyConsole_009.png)

You can configure some parameters of the add-on in Freeplane 's preferences.

|parameter|Description|Default value|Notes|
|----|----|----|----|
|Attribute for file extensions|Name of the attribute to indicate the file extension associated with the node|file_ext|When you decide to save a script as a node's note, it will 'mark' this node by defining its details to '.groovy'. But if its details have a text allready, then it will add a new attribute to the node to do this. The name of this attribute is defined in this preference.|
|Open in full Screen mode?|Groovy Console must open in full screen mode|true|I choose true because I work with two monitors and this way it opens allways in fullscreen mode in the other monitor.|
|Show console button labels|Shows the labels of the buttons added to thr Groovey Console's toolbar|true|The default value is true, so new users can become familiar with this buttons.<br>I have this option turned off|
|Default writing target|Defines which is your preferred destination when writing (saving) a script into a node:<br>  0. its note<br>  1. "script1" attribute|1. "script1" attribute|Everytime you save a new script in a node, it asks you where do you want to save it in (node or script1).<br>This parameter indicates which is the preselected option.<br>Personally I prefer to save my scripts in the notes, because this way I can look at them easier, but using script1 has its advantages too: they can be directly executed by Freeplane.|

</details>
-----

## 2. about the "Groovy Console"

The **Groovy Swing Console** is a standard component from the Groovy language.
It allows a user to enter and run **Groovy scripts**.

It looks like this:

![Groovy Console](https://docs.groovy-lang.org/latest/html/documentation/assets/img/GroovyConsole.png)

more information about it and all its features can be found in the [Groovy Console official page](https://docs.groovy-lang.org/latest/html/documentation/groovy-console.html)

-----

## 3. about "wikdshell add-on"

wikdshell is an add-on that opened a Groovy Console to write and use scripts with Freeplane.

wikdshell works with Freeplane versions up to v1.9.15.

But with the new versions starting as v1.10.1 it doesn't work any longer.

