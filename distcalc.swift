import Foundation
struct PlayerInChess {
var name: String = "Игрок"
    var wins: UInt = 0
//инициализатор
    init(name: String){
        self.name = name }
}
var helga = PlayerInChess(name: "Ольга")
helga.wins // 0
// следующий код должен был бы вызвать ошибку

struct Point {
    var point1: (Double, Double) = (0,0)
    func destination(point2: (Double, Double)) -> Double {
        return (pow((point2.0 - self.point1.0),2) + pow((point2.1-self.point1.1),2)).squareRoot()
    }
    
}

let xy = Point(point1: (10, 20))
xy.destination(point2: (15, 22))

