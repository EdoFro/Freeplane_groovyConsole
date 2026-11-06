package edofro.groovyconsole

import java.awt.Color

import javax.swing.JFrame
import javax.swing.JOptionPane
import javax.swing.text.StyleConstants
import javax.swing.text.StyleContext
import javax.swing.text.JTextComponent

import groovy.console.ui.text.SmartDocumentFilter
import org.apache.groovy.parser.antlr4.GroovyLexer

import groovy.console.ui.Console
import groovy.swing.SwingBuilder

import org.freeplane.core.util.MenuUtils            as menuUtils
import org.freeplane.plugin.script.FreeplaneScriptBaseClass.ConfigProperties
import org.freeplane.plugin.script.GroovyScript
import org.freeplane.features.icon.factory.IconFactory




class GroovyConsole {

//region properties

    static final String attributeForExtensions =  new ConfigProperties().getProperty('groovyConsole_attributeForExtensions','file_ext')
    static final Boolean fullScreen = new ConfigProperties().getBooleanProperty('groovyConsole_fullScreen')
    static final Boolean showLabels = new ConfigProperties().getBooleanProperty('groovyConsole_showButtonLabels')
    static final int defaultWriteTo = new ConfigProperties().getIntProperty('groovyConsole_defaultWriteTo',1)

//endregion

//region open
    def static openGroovyConsole(n, bind){
        def scriptInfo = scriptAndSourceFromNode(n)
        openGroovyConsole(n, bind, scriptInfo[0], scriptInfo[1], fullScreen)
    }

    def static openGroovyConsole(n, bind, inPut, source, boolean fs = fullScreen, boolean padInput = true){
        Console console = new TemporaryScriptConsole(bind, GroovyScript.createCompilerConfiguration())
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

        applyEditorColors(console.inputArea)
        applySyntaxColors()

        switch(inPut?.class){
            case File:
                console.loadScriptFile(inPut)
                break
            case String:
                console.inputArea.setText(padInput ? inPut + "\n\n\n" : inPut)
               break
        }
        console.setDirty(false)        
        EditorCompletion.install(console)
        console.startTracking(source)
        console.showCleanupReview()
        
        if (fs) console.getFrame().setExtendedState(JFrame.MAXIMIZED_BOTH)

        console.systemOutInterceptor.start()
        // updateTitle(console)

    }

//endregion

    static void applyEditorColors(JTextComponent editor) {
        editor.background = Color.WHITE
        editor.caretColor = Color.BLUE
        editor.disabledTextColor = new Color(145, 145, 145)
        editor.foreground = Color.BLACK
        editor.selectedTextColor = new Color(245, 245, 245)
        editor.selectionColor = new Color(38, 117, 191)
    }

    static void applySyntaxColors() {
        // SmartDocumentFilter stores its token styles by token number in Swing's shared context.
        def styles = StyleContext.defaultStyleContext
        def colors = SmartDocumentFilter.HIGHLIGHTED_TOKEN_TYPE_LIST.collectEntries { [(it): new Color(0x254CA3)] }
        [GroovyLexer.StringLiteral, GroovyLexer.GStringBegin, GroovyLexer.GStringPart, GroovyLexer.GStringEnd].each {
            colors[it] = new Color(0x21683D)
        }
        [GroovyLexer.IntegerLiteral, GroovyLexer.FloatingPointLiteral].each {
            colors[it] = new Color(0x8A3B12)
        }
        colors[GroovyLexer.NL] = new Color(0x626B75)
        colors.each { token, color ->
            def style = styles.getStyle(token.toString())
            if (style != null) StyleConstants.setForeground(style, color)
        }
    }

//region updateNode


    static GroovyShell updateNode(shell, config){
        def variables = shell.context.variables
        def selected = variables.c.selected
        if(selected != null && variables.node != selected) {
            Binding binding = new Binding(new HashMap(variables))
            binding.variables.node = selected
            binding.variables.map  = selected.map
            binding.variables.root = selected.map.root
            GroovyShell updatedShell = new GroovyShell(null, binding, config)
            return updatedShell
        }
        else
            return shell
    }
    
//endregion

//region groovy Node

    def static isGroovyNode(n){
        return isExtensionNode(n, 'groovy') || n['script1']
    }

    def static scriptFromNode(n){
        def sc = scriptAndSourceFromNode(n)[0]
        sc = sc?.class == File? TemporaryScriptStore.body(sc, sc.getText('UTF-8')) : sc
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
    
//endregion

//region get/set/is extension from selected node

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
        // If it's already defined --> do nothing
        if(extensionFromAttribute(n)==ext || extensionFromDetails(n)==ext) return
        //I prefer it in this order:
            // only details
            // if details are being Used --> attribute
        if(!n.details){
            n.details = '.' + ext
        } else {
            n[attributeForExtensions] = ext
        }
    }

    def static extensionFromNodeFile(n){
		def uri = n.link? n.mindMap.file.toURI().resolve(n.link.uri) : null
        (uri?.scheme == 'file')? extensionFromFilePath(n.link.uri.path) : null
    }

    def static isExtensionNode(n, extension){
        def ext = extensionFromNodeFile(n)?:extensionFromNode(n)
        return ext?ext==extension:false
    }

//endregion

//region write in nodes

    def static write(console){
        def vars   = console.shell.context
        def nodo   = vars.targetNode
        def source = vars.source
        if (!nodo || !(source in ['note', 'script1'])){
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
        if(!nodo || !source) return 'it couldn\'t be saved'
        def script = console.inputArea.getText().toString()
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
            default:
                return 'it couldn\'t be saved'
        }
        if (console instanceof TemporaryScriptConsole) console.savedInNode(script, nodo.text.toString().take(100))
        else console.setDirty(false)
        console.statusLabel.text = "Script saved $msg node '${nodo.text.take(100)}'".toString()
        // updateTitle(console)
    }

    def static changeTarget(vars){
        def nodo = whichNode(vars)
        def source
        if (nodo) {
            source = whichSource()
            if(source) {
                vars['targetNode'] = nodo
                vars['source']     = source
                vars['targetNodeText'] = "Node '${nodo.text}'".toString()
            }
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
                break
            case 1:
                nodo = vars['initialNode']
                break
            case 2:
                nodo = vars['c'].selected
                break
            default:
               break
        }
        return nodo
    }

    def static whichSource(){
        def source
        def titulo = "Sending Script to MindMap"
        def pregunta =  "Select destination in node:"
        String[] opciones = ["node's note","node's 'script1' attribute"]
        def resp = showInputDialogList(opciones, titulo, pregunta, defaultWriteTo)
        switch (resp) {
            case 0:
                source = 'note'
                break
            case 1:
                source = 'script1'
                break
            default:
               break
        }
        return source
    }

	def static reLoadScriptFile(console){
		def file = console.scriptFile
		if (file){
			if (JOptionPane.showConfirmDialog(null, "Do you want to reload the file?") == 0) {
                console.loadScriptFile(file)
            }
		}
	}
//endregion

//region UI

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
                text : showLabels? 'send to node' : null ,
                toolTipText : 'save script into node',
                icon : menuUtils.getMenuItemIcon('IconAction.groovyConsole/saveInNode'),
                actionPerformed : {e -> write(console)},
             )
        def writeAsButton = swing.button(
                text : showLabels? 'config + send to node' : null ,
                toolTipText : 'select options and save script into node',
                icon : menuUtils.getMenuItemIcon('IconAction.groovyConsole/saveInNodeAs'),
                actionPerformed : {e -> writeTo(console)},
             )
        def refreshCompilerConfiguration = swing.button(
                text : showLabels? 'refresh Compiler Config' : null ,
                toolTipText : "refreshes the Freeplane's GroovyScript Compiler Configuration (libraries included)",
                icon : menuUtils.getMenuItemIcon('IconAction.emoji-1F4DA'),
                actionPerformed : {e -> console.shell = updateNode(console.shell, GroovyScript.createCompilerConfiguration())},
             )
        def startSysOutInterceptor = swing.button(
                text : showLabels? 'starts System.out interceptor' : null ,
                toolTipText : "restarts the systemOutInterceptor so that print() and println() get written in the log file or the console \nuse 'View / Capture Standard Output' to direct the output to the console or to Freeplane's log.0 file",
                icon : menuUtils.getMenuItemIcon('IconAction.emoji-1F5A8'),
                actionPerformed : {e -> console.systemOutInterceptor.start()},
             )
        def reLoadButton = swing.button(
                text : showLabels? 'reload from file' : null ,
                toolTipText : 'reload script from file',
                icon : menuUtils.getMenuItemIcon('IconAction.groovyConsole/reloadFile'),
                actionPerformed : {e -> reLoadScriptFile(console)},
             )
        
        console.toolbar.addSeparator()   
        console.toolbar.add(writeButton)
        console.toolbar.add(writeAsButton)
        console.toolbar.addSeparator()   
        console.toolbar.add(refreshCompilerConfiguration)
        console.toolbar.add(startSysOutInterceptor)
        console.toolbar.addSeparator()   
        console.toolbar.add(reLoadButton)
        console.temporaryButton = swing.button(
                text: showLabels ? 'create temporary .groovy' : null,
                toolTipText: 'Create a temporary Groovy file for IntelliJ',
                icon: IconFactory.getInstance().getIcon(GroovyConsole.getResource('/icons/groovyConsole/temporaryScript.svg')),
                actionPerformed: { e -> console.saveTemporaryScript() }
        )
        console.showTemporaryButtonLabel = showLabels
        console.toolbar.add(console.temporaryButton)
    }

//endregion

}
