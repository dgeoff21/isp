import Scenes
import Igis

/*
 This class is responsible for the interaction Layer.
 Internally, it maintains the RenderableEntities for this layer.
 */


class InteractionLayer : Layer, KeyDownHandler{

    let ball = Ball()
    let paddleLeft = Paddle(rect:Rect(size:Size(width:10, height:100)))
    let paddleRight = Paddle(rect:Rect(size:Size(width:10, height:100)))
    var letf = 0
    var ritgh = 0
    var rightX = 0
    var tooFar = 0

    init() {
        // Using a meaningful name can be helpful for debugging
        super.init(name:"Interaction")

        // We insert our RenderableEntities in the constructor
        insert(entity: ball, at: .front)
        ball.changeVelocity(velocityX: 6, velocityY: 10)

        insert(entity: paddleLeft, at: .front)
        insert(entity: paddleRight, at: .front)

    }
    override func preSetup(canvasSize: Size, canvas: Canvas) {
        rightX = canvasSize.center.x + canvasSize.center.x - 20
        paddleLeft.move(to:Point(x: 10, y: canvasSize.center.y))
        paddleRight.move(to:Point(x: rightX, y: canvasSize.center.y))
        letf = canvasSize.center.y
        ritgh = canvasSize.center.y
        tooFar = canvasSize.center.y * 2 - 120
        dispatcher.registerKeyDownHandler(handler: self)
    }

    override func postTeardown() {
        dispatcher.unregisterKeyDownHandler(handler: self)
    }



    func onKeyDown(key:String, code:String, ctrlKey:Bool, shiftKey:Bool, altKey:Bool, metaKey:Bool) {
        if key == "w" && letf > 20 {
            letf -= 20
            paddleLeft.move(to: Point(x: 10, y: letf))
        }
        if key == "s" && letf < tooFar {
            letf += 20
            paddleLeft.move(to: Point(x: 10, y: letf))
        }
        if key == "ArrowUp" && ritgh > 20 {
            ritgh -= 20
            paddleRight.move(to: Point(x: rightX, y: ritgh))
        }
        if key == "ArrowDown" && ritgh < tooFar {
            ritgh += 20
            paddleRight.move(to: Point(x: rightX, y: ritgh))
        }
    }
}
