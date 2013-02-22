// Navigation pane project template
import bb.cascades 1.0

NavigationPane {
    id: navigationPane
    Menu.definition: MenuDefinition {
        helpAction: HelpActionItem {
            id: aboutActionItem
            title: qsTr("About")
            onTriggered: {
                aboutSheet.open()
            }
            attachedObjects: [
                Sheet {
                    id: aboutSheet
                    content: Page {
                        titleBar: TitleBar {
                            appearance: TitleBarAppearance.Plain
                            dismissAction: ActionItem {
                                title: qsTr("Close")
                                onTriggered: {
                                    aboutSheet.close()
                                }
                            }
                        }
                        content: Container {
                            layout: DockLayout {}
                            Label {
                                text: qsTr("Version 0.1<br/>Developed by Sergey Kashin<br/>This application is totally free.<br/>However, feel free to donate if you want to thank me :)<br/>For more info please visit the <a href=\"https://github.com/kashin/TimeKiller\">support page</a>.")
                                
                                multiline: true
                                verticalAlignment: VerticalAlignment.Center
                                horizontalAlignment: HorizontalAlignment.Center
                                textFormat: TextFormat.Html
                                textStyle {
                                    textAlign: TextAlign.Center
                                    fontSize: FontSize.Large
                                }
                            }
                        }
                    }
                }
            ]
        }
    }
    firstPage: MenuPage {
        id: menuPage
    }
}
