import bb.cascades 1.0

Page {
    content: Container {
        id: mainContainer
        verticalAlignment: VerticalAlignment.Fill
        horizontalAlignment: HorizontalAlignment.Fill
        
        layout: DockLayout {}
        Container {
            id: controlsContainer
            horizontalAlignment: HorizontalAlignment.Center
            verticalAlignment: VerticalAlignment.Center
            layout: StackLayout {}
            Button{
                id: newGameButton
                text: qsTr("New Game")
                onClicked: {
                    navigationPane.push(gamePageDefinition.createObject())
                }
            }
            Button {
                id: highScores
                text: qsTr("High scores")
                onClicked: {
                    navigationPane.push(highScorePageDefinition.createObject())
                }
            }
        }
    }
    attachedObjects: [
        ComponentDefinition {
            id: gamePageDefinition;
            source: "asset:///GamePage.qml"
        },
        ComponentDefinition {
            id: highScorePageDefinition;
            source: "asset:///HighScorePage.qml"
        }
    ]
}
