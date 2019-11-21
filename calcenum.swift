import Foundation
enum ArithmeticExpression {
// указатель на конкретное значение
case number( Int )
// указатель на операцию сложения
indirect case addition( ArithmeticExpression, ArithmeticExpression ) // указатель на операцию вычитания
    indirect case subtraction( ArithmeticExpression, ArithmeticExpression) // указатель на операцию вычитания
    indirect case division ( ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication ( ArithmeticExpression, ArithmeticExpression)
    indirect case exponantaion ( ArithmeticExpression, ArithmeticExpression)
// метод, проводящий операцию
    func evaluate( _ expression: ArithmeticExpression? = nil ) -> Int{
// определение типа операнда (значение или операция)
        switch expression ?? self{
        case let .number( value ):
            return value
        case let .addition( valueLeft, valueRight ):
            return self.evaluate( valueLeft ) + self.evaluate ( valueRight )
        case .subtraction( let valueLeft, let valueRight ):
            return self.evaluate( valueLeft )-self.evaluate( valueRight )
        case let .division( valueLeft, valueRight ):
            return self.evaluate(valueLeft) / self.evaluate(valueRight)
        case let .multiplication( valueLeft, valueRight ):
            return self.evaluate(valueLeft) * self.evaluate(valueRight)
        case let .exponantaion( valueLeft, valueRight ):
            var tmp: Int = 1
            if self.evaluate(valueRight) == 0{
                return 1
            }else{
                for _ in 1...self.evaluate(valueRight){
                    tmp*=self.evaluate(valueLeft)
                }
                return(tmp)
                }
            }
            }
    
    }
var hardExpr = ArithmeticExpression.exponantaion(.number(3), .number(3))
hardExpr.evaluate() // 27
