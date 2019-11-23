enum Type { //перечисление фигур
   case rook
   case knight
   case bishop
   case pown
   case queen
    case king
}

enum Color { //Перечисление цвета
case black
case white
}

struct Chessman{ // структура для чесман
    var color :Color = .black
    var type : Type = .bishop
    var coordinates : (Character, UInt?) = ("?",1)
    var symbol : Character = "?"
    init (color: Color, type: Type){
        self.coordinates = ("?",nil)
        self.symbol = "?"
    }
    init (color: Color, type : Type, coordnates: (Character,UInt), symbol: Character){
        self.coordinates
        self.type
        self.coordinates
        self.symbol
    }
    mutating func type2nil (_: Color, _: Type){ // принимает тип и цвет возвращает пустую координату
        self.coordinates = ("?",nil)
    }
    mutating func setCoordinates(a: Character, b: UInt) {//
        self.coordinates = (a, b)
        }
    mutating func kill(){
        self.coordinates = ("?", nil)
    }
    }

var whiteKing = Chessman(color: .white, type: .king)
whiteKing.setCoordinates(a: "C", b: 3)
whiteKing.kill()
var blackKing = Chessman(color: .black, type: .king, coordnates: ("A",2), symbol: "\u{265A}")
