  
import Scenes
import Igis

/*
 This class is responsible for rendering the background.
 */


class Background : RenderableEntity {

    init() {
        // Using a meaningful name can be helpful for debugging
        super.init(name:"Background")
    }
    override func setup(canvasSize:Size, canvas:Canvas) {
        let rect = Rect(topLeft:Point(x:0, y:0), size:Size(width:6000, height:2500))
        let rectangle = Rectangle(rect:rect, fillMode:.fillAndStroke)
        let fillStyle = FillStyle(color:Color(.darkgreen))
        canvas.render(fillStyle, rectangle)
        let rect2 = Rect(topLeft:Point(x:950, y:0), size:Size(width:13, height:10000))
        let rectangle2 = Rectangle(rect:rect2)
        let fillStyle2 = FillStyle(color:Color(.white))
        canvas.render(fillStyle2, rectangle2)
        let rect3 = Rect(topLeft:Point(x:0, y:0), size:Size(width:20, height:2500))
        let rectangle3 = Rectangle(rect:rect3)
        let fillStyle3 = FillStyle(color:Color(.white))
        canvas.render(fillStyle3, rectangle3)
        let rect4 = Rect(topLeft:Point(x:2485, y:0), size:Size(width:20, height:2500))
        let rectangle4 = Rectangle(rect:rect4)
        let fillStyle4 = FillStyle(color:Color(.white))
        canvas.render(fillStyle4, rectangle4)
        let rect5 = Rect(topLeft:Point(x:0, y:0), size:Size(width:6000, height:20))
        let rectangle5 = Rectangle(rect:rect5)
        let fillStyle5 = FillStyle(color:Color(.white))
        canvas.render(fillStyle5, rectangle5)
        let rect6 = Rect(topLeft:Point(x:0, y:1235), size:Size(width:6000, height:20))
        let rectangle6 = Rectangle(rect:rect6)
        let fillStyle6 = FillStyle(color:Color(.white))
        canvas.render(fillStyle6, rectangle6)
        let rect7 = Rect(topLeft:Point(x:0, y:400), size:Size(width:20, height:350))
        let rectangle7 = Rectangle(rect:rect7)
        let fillStyle7 = FillStyle(color:Color(.darkgreen))
        canvas.render(fillStyle7, rectangle7)
        let rect8 = Rect(topLeft:Point(x:2485, y:400), size:Size(width:20, height:350))
        let rectangle8 = Rectangle(rect:rect8)
        let fillStyle8 = FillStyle(color:Color(.darkgreen))
        canvas.render(fillStyle8, rectangle8)
    }
}
 
