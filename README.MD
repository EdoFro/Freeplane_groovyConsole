-----

# new groovy console for Freeplane

A groovy console that runs on groovy 4 and java 17 to replace wikdshell add-on

-----

## 1. about the Groovy Console

The **Groovy Swing Console** allows a user to enter and run **Groovy scripts**.
It is a standard component from the Groovy language.

It looks like this:

![Groovy Console](https://docs.groovy-lang.org/latest/html/documentation/assets/img/GroovyConsole.png)

more info about it can be found in the [Groovy Console official page](https://docs.groovy-lang.org/latest/html/documentation/groovy-console.html)

-----

## 2. about groovyConsole add-on

groovyConsole is a new add-on that opens a Groovy Console and works with Groovy 4 and can be used with the new versions of Freeplane.

![groovyConsole_001.png](https://github.com/EdoFro/Freeplane_groovyConsole/wip/resources/groovyConsole_001.png)

Additional features:

* It has access to the Freeplane API so it can interact with nodes and maps
* It can load / save script files to be used with Freeplane
* It can 'save' scripts as node's notes or attributes
* If you select a node that has a script and then you open the groovy console, the script will be automatically loaded in the console editor
* You can edit the script and 'save' them back to the node
* You can choose if you want to save the script in its original node or into the currently selected one
   * ![groovyConsole_002.png](https://github.com/EdoFro/Freeplane_groovyConsole/wip/resources/groovyConsole_002.png)
* You can choose if you want to 'save' it as a note or as 'script1' attribute
   * ![groovyConsole_003.png](https://github.com/EdoFro/Freeplane_groovyConsole/wip/resources/groovyConsole_003.png)

The script stays in the map, so you don't need to have multiple files for you short scripts

![groovyConsole_004.png](https://github.com/EdoFro/Freeplane_groovyConsole/wip/resources/groovyConsole_004.png)

-----

### 2.1. Additional buttons

|Button|Label|Description|
|----|----|----|
|![groovyConsole_005.png](https://github.com/EdoFro/Freeplane_groovyConsole/wip/resources/groovyConsole_005.png)|Send to node|Save script into node|
|![groovyConsole_006.png](https://github.com/EdoFro/Freeplane_groovyConsole/wip/resources/groovyConsole_006.png)|Config + send to node|Select options and save script into node|
|![groovyConsole_007.png](https://github.com/EdoFro/Freeplane_groovyConsole/wip/resources/groovyConsole_007.png)|Refresh Compiler Config|Refreshes the Freeplane's **GroovyScript Compiler Configuration**<br>(libraries included)|
|![groovyConsole_008.png](https://github.com/EdoFro/Freeplane_groovyConsole/wip/resources/groovyConsole_008.png)|Starts System.out interceptor|Restarts the ```systemOutInterceptor``` so that ```print()``` and ```println()``` get written in the log file or the console.<br>Use '**View / Capture Standard Output**' to direct the output to the console or to Freeplane's *log.0* file|

-----

### 2.2. Add-on configuration

![groovyConsole_009.png](https://github.com/EdoFro/Freeplane_groovyConsole/wip/resources/groovyConsole_009.png)

You can configure some parameters of the add-on in Freeplane 's preferences.

|parameter|Description|Default value|Notes|
|----|----|----|----|
|Attribute for file extensions|Name of the attribute to indicate the file extension associated with the node|file_ext|When you decide to save a script as a node's note, it will 'mark' this node by defining its details to '.groovy'. But if its details have a text allready, then it will add a new attribute to the node to do this. The name of this attribute is defined in this preference.|
|Open in full Screen mode?|Groovy Console must open in full screen mode|true|I choose true because I work with two monitors and this way it opens allways in fullscreen mode in the other monitor.|
|Show console button labels|Shows the labels of the buttons added to thr Groovey Console's toolbar|true|The default value is true, so new users can become familiar with this buttons.<br>I have this option turned off|
|Default writing target|Defines which is your preferred destination when writing (saving) a script into a node:<br>  0. its note<br>  1. "script1" attribute|1. "script1" attribute|Everytime you save a new script in a node, it asks you where do you want to save it in (node or script1).<br>This parameter indicates which is the preselected option.<br>Personally I prefer to save my scripts in the notes, because this way I can look at them easier, but using script1 has its advantages too: they can be directly executed by Freeplane.|

-----

## 3. about wikdshell add-on

wikdshell is an add-on that opened a Groovy Console to write and use scripts with Freeplane.

wikdshell works with Freeplane versions up to v1.9.15.

But with the new versions starting as v1.10.1 it doesn't work any longer.

