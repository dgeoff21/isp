import Scenes
import Igis

class Background: RenderableEntity {

init() {
    // Using a meaningful name can be helpful for debugging
    super.init(name:"Background")
}
override func setup(canvasSize:Size, canvas:Canvas) {
    let rect = Rect(topLeft:Point(x:0, y:0), size:Size(width:3000, height:3000))
    let rectangle = Rectangle(rect:rect, fillMode:.fillAndStroke)
    let fillStyle = FillStyle(color:Color(.gray))
    canvas.render(fillStyle, rectangle)
    let barrier1 = Rect(topLeft:Point(x:0, y:0)
    
}
}
