import Igis
import Scenes

class Ball : RenderableEntity, MouseMoveHandler {

    var velocityX : Int
    var velocityY : Int

    init() {
        // Using a meaningful name can be helpful for debugging
        velocityX = 0
        velocityY = 0
        super.init(name:"Ball")
    }

    override func setup(canvasSize: Size, canvas: Canvas) {
        // Position the ellipse at the center of the canvas
        ellipse.center = canvasSize.center
        dispatcher.registerMouseMoveHandler(handler:self)
    }

    override func teardown() {
        dispatcher.unregisterMouseMoveHandler(handler:self)
    }

    override func render(canvas:Canvas) {
        canvas.render(strokeStyle, fillStyle, lineWidth, ellipse)
    }

    func onMouseMove(globalLocation: Point, movement: Point) {
        ellipse.center = globalLocation
    }

    override func boundingRect() -> Rect {
        return Rect(size: Size(width: Int.max, height: Int.max))
    }

    func changeVelocity(velocityX:Int, velocityY:Int) {
        self.velocityX = velocityX
        self.velocityY = velocityY
    }

    override func calculate(canvasSize: Size) {
        ellipse.center += Point(x: velocityX, y: velocityY)

        // Form a bounding rectangle around the canvas
        let canvasBoundingRect = Rect(size:canvasSize)

        // Form a bounding rect around the ball (ellipse)
        let ballBoundingRect = Rect(topLeft:Point(x:ellipse.center.x-ellipse.radiusX, y:ellipse.center.y-ellipse.radiusY), size:Size(width:ellipse.radiusX*2, height:ellipse.radiusY*2))

        // Determine if we've moved outside of the canvas boundary rect
        let tooFarLeft = ballBoundingRect.topLeft.x < canvasBoundingRect.topLeft.x
        let tooFarRight = ballBoundingRect.topLeft.x + ballBoundingRect.size.width > canvasBoundingRect.topLeft.x + canvasBoundingRect.size.width

        let tooFarUp = ballBoundingRect.topLeft.y < canvasBoundingRect.topLeft.y
        let tooFarDown = ballBoundingRect.topLeft.y + ballBoundingRect.size.height > canvasBoundingRect.topLeft.y + canvasBoundingRect.size.height

        // If we're too far to the left or right, we bounce the x velocity
        if tooFarLeft || tooFarRight {
            velocityX = -velocityX
            if !power {
                velocityY = velocityY * 2
                velocityX = velocityX * 2
            } else {
                velocityY = velocityY / 2
                velocityX = velocityX / 2
            }
            ellipse.radiusX = ellipse.radiusX / 2
            power = !power
        }
        if ellipse.radiusX != 30 {
            ellipse.radiusX += 1
        }

        // If we're too far to the top or bottom, we bound the y velocity

        if tooFarUp || tooFarDown {
            velocityY = -velocityY
            if !power {
                velocityY = velocityY * 2
                velocityX = velocityX * 2
            } else {
                velocityY = velocityY / 2
                velocityX = velocityX / 2
            }
            ellipse.radiusY = ellipse.radiusY / 2

            power = !power
        }
        if ellipse.radiusY != 30 {
            ellipse.radiusY += 1
        }
    }

    let ellipse = Ellipse(center:Point(x:0, y:0), radiusX:30, radiusY:30, fillMode:.fillAndStroke)
    let strokeStyle = StrokeStyle(color:Color(.black))
    let fillStyle = FillStyle(color:Color(.blue))
    let lineWidth = LineWidth(width:5)
    var power = false
}
