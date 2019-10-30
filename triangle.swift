import Foundation

var a: Double=0, b: Double=0, c: Double=0
var e:Double
typealias Point = (double_t, Double)
let d1: Point=(1, 1), d2: Point=(2,2), d3: Point=(7,3)

a=(pow((d2.0 - d1.0),2) + pow((d2.1-d1.1),2)).squareRoot()
b=(pow((d3.0 - d1.0),2) + pow((d3.1-d1.1),2)).squareRoot()
c=(pow((d2.0 - d3.0),2) + pow((d2.1-d3.1),2)).squareRoot()
if a+b>c && a+c>b && b+c>a {
    print("Треугольник существует")
}
else{
    print("Треугольник не существует")
}
