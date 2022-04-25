package edofro.groovyconsole

import javax.swing.JFrame
import javax.swing.JOptionPane

import groovy.console.ui.Console
import groovy.swing.SwingBuilder

import org.freeplane.core.util.MenuUtils            as menuUtils
import org.freeplane.plugin.script.FreeplaneScriptBaseClass
import org.freeplane.plugin.script.FreeplaneScriptBaseClass.ConfigProperties
import org.freeplane.plugin.script.GroovyScript


class GroovyConsole {

//region: properties

    static final String attributeForExtensions =  new ConfigProperties().getProperty('groovyConsole_attributeForExtensions','file_ext')
    static final Boolean fullScreen = new ConfigProperties().getBooleanProperty('groovyConsole_fullScreen')
    //static final int defaultWriteTo = new ConfigProperties().getBooleanProperty('groovyConsole_defaultWriteTo') // TODO: agregar a preferences
    static String DEFAULT_WINDOW_TITLE = 'Groovy Console for Freeplane'

//end:

//region: open
    def static openGroovyConsole(n, bind){
        def scriptInfo = scriptAndSourceFromNode(n)
        openGroovyConsole(n, bind, scriptInfo[0], scriptInfo[1], fullScreen)
    }

    def static openGroovyConsole(n, bind, inPut, source, boolean fs = fullScreen){
        Console console = new Console(null, bind, GroovyScript.createCompilerConfiguration())
        console.setVariable('map', n.map)
        console.setVariable('root', n.map.root)
        console.setVariable('source', source)
        console.setVariable('initialNode', n)
        console.setVariable('targetNode', n)
        console.setVariable('targetNodeText',"Node '${n.text}'".toString())
        

        def updateVars = {console.shell = updateNode(console.shell,console.config)}
        console.setBeforeExecution( updateVars )

        console.run()

        console.setVariable('console',console)

        addButtonsTo(console)
        console.systemOutInterceptor.start()

        switch(inPut?.class){
            case File:
                console.loadScriptFile(inPut)
                break;
            case String:
                console.inputArea.setText(inPut + "\n\n\n")
               break;
        }
        console.setDirty(false)        
        
        if (fs) console.getFrame().setExtendedState(JFrame.MAXIMIZED_BOTH);

        // updateTitle(console)
        
        
    }

//end:

//region: updateNode


    def static GroovyShell updateNode(shell,config){
        def variables = shell.context.variables;
        def selected = variables.c.selected;
        if(selected != null && variables.node != selected) {
            Binding binding = new Binding(new HashMap(variables));
            binding.variables.node = selected;
            binding.variables.map  = selected.map;
            binding.variables.root = selected.map.root;
            GroovyShell updatedShell = new GroovyShell(null, binding, config);
            return updatedShell;
        }
        else
            return shell;
    }
    
//end:

//region: groovy Node

    def static isGroovyNode(n){
        return (isExtensionNode(n, 'groovy') || n['script1']?true:false)
    }

    def static scriptFromNode(n){
        def sc = scriptAndSourceFromNode(n)[0]
        sc = sc?.class == File? sc.text : sc
        return sc
    }
    
    // order of priority
    // groovy file   >  script1  >  ".groovy" note  >  empty
    def static scriptAndSourceFromNode(n){
        def script
        def source
        if (isGroovyNode(n)){
            if ( extensionFromNodeFile(n) == 'groovy' ) {
                script  = n.link.file//.text
                source  = 'file'
            } else if ( n['script1']?true:false ){
                script  = n['script1'].plain.toString().trim()
                source  = 'script1'
            } else if ( n.note ){
                script  = n.note.toString()
                source  = 'note'
            }
        }
        return [script, source]
    }
    
//end:

//region: get/set/is extension from selected node

    def static extensionFromNode(n){
        extensionFromAttribute(n)?:extensionFromDetails(n)?:extensionFromText(n)?:null
    }
    
    def static extensionFromAttribute(n){
        n[attributeForExtensions]?:null
    }
    
    def static extensionFromDetails(n){
        n.details?.size()>1?n.details?[0]=='.'?n.details.drop(1).takeBefore(' ').takeBefore('\n')?:n.details.drop(1).takeBefore('\n')?:n.details.drop(1).takeBefore(' ')?:n.details.drop(1):null:null
    }
    
    def static extensionFromText(n){
        n.text.reverse().takeBefore('.').reverse()
    }

    def static extensionFromFilePath(filepath){
        return filepath.reverse().split("\\.")[0].reverse().toLowerCase()
    }

    def static setExtension(n, ext){
        // If it's allready defined --> do nothing
        if(extensionFromAttribute(n)==ext || extensionFromDetails(n)==ext) return
        //I prefer it in this order:
            // only details
            // if details are beeing Used --> attribute
        if(!n.details){
            n.details = '.' + ext
        } else {
            n[attributeForExtensions] = ext
        }
    }

    def static extensionFromNodeFile(n){
        (n.link && n.link.uri && n.link.uri.scheme == 'file')?extensionFromFilePath(n.link.uri.path):null
    }

    def static isExtensionNode(n, extension){
        def ext = extensionFromNodeFile(n)?:extensionFromNode(n)
        return ext?ext==extension:false
    }

//end:


//region: write in nodes

    def static write(console){
        def vars   = console.shell.context
        def nodo   = vars.targetNode
        def source = vars.source
        if (!nodo || !source){
            writeTo(console)
        } else {
            write(console,nodo, source)
        }
    }

    def static writeTo(console){
        def resp   = changeTarget(console.shell)
        def nodo   = resp[0]
        def source = resp[1]
        write(console, nodo, source)
    }

    def static write(console, nodo, source){
        if(!nodo || !source) return 'no se pudo guardar'
        def script = console.inputArea.getText().toString().trim()
        def msg
        switch(source){
            case 'note':
                nodo.note = script
                msg = 'in note from'
                setExtension(nodo,'groovy')
                break
            case 'script1':
                nodo['script1'] = script
                msg = "in attribute 'script1' from"
                break
        }
        console.setDirty(false)
        console.statusLabel.text = "Script saved $msg node '${nodo.text.take(100)}'".toString()
        // updateTitle(console)
    }

    def static changeTarget(vars){
        def nodo = whichNode(vars)
        def source = whichSource()
        if(nodo && source) {
            vars['targetNode'] = nodo
            vars['source']     = source
            vars['targetNodeText'] = "Node '${nodo.text}'".toString()
        }
        return [nodo, source]
    }

    def static whichNode(vars){
        def nodo
        def titulo = "Sending Script to MindMap"
        def pregunta =  "Select destination node:"
        String[] opciones = [vars['targetNodeText'],"initial node","currently selected node"]
        def resp = showInputDialogList(opciones, titulo, pregunta, 0) //TODO: si el script viene de ToM --> opción propuesta debe ser la 2 : nodo actualmente seleccionado
        switch (resp) {
            case 0:
                nodo = vars['targetNode']
                break;
            case 1:
                nodo = vars['initialNode']
                break;
            case 2:
                nodo = vars['c'].selected
                break;
            default:
               break;
        }
        return nodo
    }

    def static whichSource(){
        def source
        def titulo = "Sending Script to MindMap"
        def pregunta =  "Select destination in node:"
        String[] opciones = ["node's note","node's 'script1' attribute"]
        def resp = showInputDialogList(opciones, titulo, pregunta, 0) //TODO: opción por default debe estar en preferences
        switch (resp) {
            case 0:
                source = 'note'
                break;
            case 1:
                source = 'script1'
                break;
            default:
               break;
        }
        return source
    }

//end:

//region: UI

    static int showInputDialogList(String[] options, String title = 'Input dialog',String question = 'Please select an option',int defaultOption = 0){
        String result = (String)JOptionPane.showInputDialog(
           null,
           question,
           title,
           JOptionPane.QUESTION_MESSAGE,
           null,
           options,
           options[defaultOption]
        )
        return (options as ArrayList).indexOf(result)
    }
    

    def static addButtonsTo(console){
        SwingBuilder swing      = new SwingBuilder()
         
        def writeButton = swing.button(
                label : 'send to node',
                toolTipText : 'save script into node',
                icon : menuUtils.getMenuItemIcon('IconAction.emoji-2B07'),
                actionPerformed : {e -> write(console)},
             )
        def writeAsButton = swing.button(
                label : 'config + send to node',
                toolTipText : 'select options and save script into node',
                icon : menuUtils.getMenuItemIcon('IconAction.emoji-2198'),
                actionPerformed : {e -> writeTo(console)},
             )
        def refreshCompilerConfiguration = swing.button(
                label : 'refresh Compiler Config',
                toolTipText : "refreshes the Freeplane's GroovyScript Compiler Configuration (libraries included)",
                icon : menuUtils.getMenuItemIcon('IconAction.emoji-1F4DA'),
                actionPerformed : {e -> console.shell = updateNode(console.shell, GroovyScript.createCompilerConfiguration())},
             )
        // def startSysOutInterceptor = swing.button(
                // label : 'starts System.out interceptor',
                // toolTipText : "restarts the systemOutInterceptor so that print() and println() get written in the log file or the console \nuse 'View / Capture Standard Output' to direct the output to the console or to Freeplane's log.0 file",
                // icon : menuUtils.getMenuItemIcon('IconAction.emoji-1F5A8'),
                // actionPerformed : {e -> console.systemOutInterceptor.start()},
             // )
        
        console.toolbar.addSeparator()   
        console.toolbar.add(writeButton)
        console.toolbar.add(writeAsButton)
        console.toolbar.addSeparator()   
        console.toolbar.add(refreshCompilerConfiguration)
    //    console.toolbar.add(startSysOutInterceptor)
    }

    // def static updateTitle(console) {
        // def frame = console.frame
        // def vars  = console.shell
		// if (frame.properties.containsKey('title')) {
			// if (console.scriptFile != null)
				// frame.title = "File: ${console.scriptFile.name} ${(console.dirty ? ' * ': '')} - $DEFAULT_WINDOW_TITLE"
			// else if (vars['targetNode'])
				// frame.title = "${vars['targetNodeText']} ${(console.dirty ? ' * ': '')} - $DEFAULT_WINDOW_TITLE"
			// else
				// frame.title = "${(console.dirty ? ' * ': '')} - $DEFAULT_WINDOW_TITLE"		}
	// }

//end:

}