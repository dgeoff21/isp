#1
import Igis
import Scenes

class Scoreboard: RenderableEntity {
    let scoreboard:Text

    init() {
        scoreboard = Text(location:Point.zero, text:String(0), fillMode:.fill)
        scoreboard.font = "40pt Arial"

        super.init(name:"Scoreboard")
    }
    func addScore(amount:Int) {
        scoreboard.text = String(Int(scoreboard.text)! + amount)
    }
    override func render(canvas:Canvas) {
        canvas.render(FillStyle(color:Color(.black)),scoreboard)
    }
}
#2
import Igis

import Scenes


class Scoreboard: RenderableEntity {

    var rectangle: Rectangle

    var score: Text

    var currentScore = 0

    var score2: Text



    init(rect: Rect) {

        rectangle = Rectangle(rect:rect, fillMode:.fillAndStroke)

        score = Text(location: Point(x:500, y: 50), text: "")

        score.font = "10pt Arial"

        score2 = Text(location: Point(x: 750, y: 50), text:"")

        score2.font = "10pt Arial"



        super.init(name: "Scoreboard")

    }


    public func incrementScore() {

        currentScore += 1

    }


    override func render(canvas:Canvas) {

        let strokeStyle = StrokeStyle(color:Color(.blue))

        let lineWidth = LineWidth(width:5)

        score = Text(location: Point(x:500, y:50), text: "\(currentScore)")

        score.font = "50pt Arial"

        canvas.render(strokeStyle, lineWidth, score, score2)

    }


    func move(to point:Point) {

        rectangle.rect.topLeft = point

    }

}
