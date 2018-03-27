//: Playground - noun: a place where people can play

import UIKit

//Tao enum

enum Compasspoint{
    case north
    case south
    case east
    case west
}

//call enum

var enumtmp = Compasspoint.east

//changed
enumtmp = .north

//Associatied values
enum Code{
    case upc(Int,Int,Int)
    case qrc(String)
}
//Draw value

enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}
var dir = ASCIIControlCharacter.tab
dir.rawValue


//Recursive Enum
enum ArithmeticExpression {
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}
let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}

print("\(evaluate(product))")

