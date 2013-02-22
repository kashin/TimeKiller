import bb.cascades 1.0

Container {
    id: mainContainer
    background: Color.DarkYellow
    property int columnsCount: 5
    layout: StackLayout {
        orientation: LayoutOrientation.LeftToRight
    }

    /*!
     *  @brief moves all current objects forward (makes one game 'step')
     */
    function moveObjects() {
        for (var i ; i < mainContainer.count() - 1 ; i++) {
            var container = mainContainer.at(i)
            for (var j; j < container.count(); j++) {
                var object = container.at(j)
                object.translationY += 30
            }
        }
    }
    
    /*!
    *  @param column column number where we should add a flying object 
    *  @param object component that should be added into column
    */ 
    function addObjectToColumn(column, object) {
        if (column < mainContainer.count()) {
            var container = mainContainer.at(column)
            if (container) {
                container.insert(1, object)
            }
        }
    }
    
    onCreationCompleted: {
        // creating columns
        for (var i = 0; i < columnsCount; i++) {
            var columnObject = columnDef.createObject()
            columnObject.add(columnPlaceHolderDef.createObject())
            mainContainer.add(columnObject)
        }
    }
    
    attachedObjects: [
        ComponentDefinition {
            id: columnDef
            content: Container {
                layout: StackLayout {
                    orientation: LayoutOrientation.TopToBottom
                }
            }
        },
        ComponentDefinition {
            id: columnPlaceHolderDef
            content: ImageView {
                verticalAlignment: VerticalAlignment.Center
                horizontalAlignment: HorizontalAlignment.Center
                imageSource: "asset:///images/bubble.png"
                maxHeight: 85
                maxWidth: 85
                scalingMethod: ScalingMethod.AspectFit
                opacity: 0.85
            }
        }
    ]
}
