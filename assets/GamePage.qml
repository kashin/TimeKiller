import bb.cascades 1.0
import time.killer 1.0

Page {
    content: GameFieldGrid {
        id: fieldGrid
        columnsCount: 6
    }
    attachedObjects: [
        Timer {
            id: timer
            interval: 500
            singleShot: true
            onTimeout: {
                var object = flyingObject.createObject()
                object.text = qsTr("Time")
                object.textColor = Color.DarkMagenta
                fieldGrid.addObjectToColumn( Math.ceil(Math.random() * fieldGrid.columnsCount ) , object )
                object = flyingObject.createObject()
                object.text = qsTr("Ups!")
                object.textColor = Color.Blue
                fieldGrid.addObjectToColumn( 4 , object)
            }
        },
        ComponentDefinition {
            id: flyingObject
            source: "asset:///FlyingObject.qml"
        }
    ]
    onCreationCompleted: {
        timer.start()
    }
}
