package edofro.groovyconsole

import java.awt.BorderLayout
import java.awt.Component
import java.awt.Window
import java.awt.event.MouseAdapter
import java.awt.event.MouseEvent
import javax.swing.JButton
import javax.swing.JLabel
import javax.swing.JPanel
import javax.swing.JScrollPane
import javax.swing.JTextPane
import javax.swing.SwingUtilities
import groovy.console.ui.text.SmartDocumentFilter
import org.freeplane.core.ui.components.UITools
import org.freeplane.features.attribute.NodeAttributeTableModel
import org.freeplane.features.map.INodeChangeListener
import org.freeplane.features.map.INodeSelectionListener
import org.freeplane.features.map.MapController
import org.freeplane.features.map.NodeModel
import org.freeplane.features.mode.Controller
import org.freeplane.features.mode.ModeController
import org.freeplane.features.ui.IMapViewChangeListener
import org.freeplane.features.ui.ToggleToolbarAction
import org.freeplane.plugin.script.ScriptContext
import org.freeplane.plugin.script.FreeplaneScriptBaseClass.ConfigProperties
import org.freeplane.plugin.script.proxy.ProxyFactory

class ScriptTab extends JPanel {
    private static final String TAB_KEY = 'groovyConsole.scriptTab'
    private final JButton edit = new JButton('Editar')
    private final JLabel status = new JLabel()
    private final JTextPane editor = new JTextPane(editable: false)
    private final Map variables
    private final Controller controller = Controller.currentController
    private final ModeController mode = Controller.currentModeController
    private final MapController maps = mode.mapController
    private NodeModel shownNode
    private String shownScript
    private boolean listening
    private boolean refreshPending

    private final INodeSelectionListener selectionListener = [
        onSelect: { NodeModel node -> scheduleRefresh() },
        onDeselect: { NodeModel node -> scheduleRefresh() }
    ] as INodeSelectionListener

    private final INodeChangeListener changeListener = { event ->
        if (event.node?.is(shownNode)) scheduleRefresh()
    } as INodeChangeListener

    private final IMapViewChangeListener viewListener = new IMapViewChangeListener() {
        @Override
        void afterWindowLastSelectedMapViewChanged(Window window, Component view) {
            scheduleRefresh()
        }

        @Override
        void afterWindowLastSelectedMapViewRemoved(Window window) {
            scheduleRefresh()
        }
    }

    static void showTab(Binding binding) {
        def variables = new HashMap(binding.variables)
        variables.remove('node')
        SwingUtilities.invokeLater {
            def tabs = UITools.freeplaneTabbedPanel
            def tab = tabs.components.find { it.name == TAB_KEY }
            if (tab == null) {
                tab = new ScriptTab(variables)
                tabs.addTab('Script', null, tab, 'Script')
            }
            tabs.selectedComponent = tab
            def showToolPanel = Controller.currentModeController.getAction('ShowFormatPanel')
            if (showToolPanel instanceof ToggleToolbarAction && !showToolPanel.isVisible()) {
                showToolPanel.actionPerformed(null)
            }
        }
    }

    private ScriptTab(Map variables) {
        super(new BorderLayout())
        name = TAB_KEY
        this.variables = variables
        editor.styledDocument.documentFilter = new SmartDocumentFilter(editor.styledDocument)
        GroovyConsole.applyEditorColors(editor)
        GroovyConsole.applySyntaxColors()
        def controls = new JPanel(new BorderLayout())
        controls.add(edit, BorderLayout.WEST)
        controls.add(status, BorderLayout.CENTER)
        add(controls, BorderLayout.NORTH)
        def scrollPane = new JScrollPane(editor)
        scrollPane.viewport.background = editor.background
        add(scrollPane, BorderLayout.CENTER)
        edit.addActionListener {
            refresh()
            if (shownScript != null && edit.enabled) {
                def node = ProxyFactory.createNode(shownNode, new ScriptContext(null))
                def binding = new Binding(new HashMap(variables))
                binding.setVariable('node', node)
                GroovyConsole.openGroovyConsole(node, binding, shownScript, 'script1', GroovyConsole.fullScreen, false)
            }
        }
        editor.addMouseListener(new MouseAdapter() {
            @Override
            void mouseClicked(MouseEvent event) {
                if (event.clickCount == 2 && SwingUtilities.isLeftMouseButton(event) &&
                        new ConfigProperties().getBooleanProperty('groovyConsole_scriptTabDoubleClick', false)) {
                    edit.doClick(0)
                }
            }
        })
        refresh()
    }

    @Override
    void addNotify() {
        super.addNotify()
        maps.addNodeSelectionListener(selectionListener)
        maps.addNodeChangeListener(changeListener)
        controller.mapViewManager.addMapViewChangeListener(viewListener)
        listening = true
        scheduleRefresh()
    }

    @Override
    void removeNotify() {
        listening = false
        controller.mapViewManager.removeMapViewChangeListener(viewListener)
        maps.removeNodeChangeListener(changeListener)
        maps.removeNodeSelectionListener(selectionListener)
        super.removeNotify()
    }

    private void scheduleRefresh() {
        if (refreshPending) return
        refreshPending = true
        SwingUtilities.invokeLater {
            refreshPending = false
            if (listening) refresh()
        }
    }

    private void refresh() {
        NodeModel selected = Controller.currentModeController?.is(mode) ? maps.selectedNode : null
        def attributes = selected == null ? null : NodeAttributeTableModel.getModel(selected)
        int index = attributes == null ? -1 : attributes.getAttributeIndex('script1')
        String script = index < 0 ? null : (attributes.getValue(index)?.toString() ?: '')
        if (!selected?.is(shownNode) || script != shownScript) {
            editor.text = script ?: ''
            editor.caretPosition = 0
        }
        shownNode = selected
        shownScript = script
        edit.enabled = script != null && mode.canEdit(selected)
        status.text = script == null ? '  Sin atributo script1' : ''
    }
}
