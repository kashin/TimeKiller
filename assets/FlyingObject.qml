import bb.cascades 1.0

Container {
    id: objectContainer
    property string text: ""
    property variant textColor: Color.Black
    property real xPos: 0.0
    property real yPos: 0.0
    property int maxSize: 85
    
    maxHeight: maxSize
    maxWidth: maxSize
    minHeight: maxSize
    minWidth: maxSize
    layout: DockLayout {}
    Label {
        id: textLabel
        text: objectContainer.text
        verticalAlignment: VerticalAlignment.Center
        horizontalAlignment: HorizontalAlignment.Center
        textStyle {
            fontSize: FontSize.XSmall
            color: objectContainer.textColor
        }
    }
    ImageView {
        id: bubbleImage
        verticalAlignment: VerticalAlignment.Center
        horizontalAlignment: HorizontalAlignment.Center
        imageSource: "asset:///images/bubble.png"
        maxHeight: objectContainer.maxSize
        maxWidth: objectContainer.maxSize
        scalingMethod: ScalingMethod.AspectFit
        opacity: 0.85
    }
    attachedObjects: [
        LayoutUpdateHandler {
            id: layoutHandler
            onLayoutFrameChanged: {
                objectContainer.xPos = layoutFrame.x + objectContainer.translationX 
                objectContainer.yPos = layoutFrame.y + objectContainer.translationY 
            }
        }
    ]
}
