import org.freeplane.main.addons.AddOnsController

def addOn = AddOnsController.getController().getInstalledAddOn('groovyConsole')
if (addOn?['active']) {
    menuUtils.executeMenuItems(['addons.groovyConsole.showScriptTab_on_single_node'])
}
