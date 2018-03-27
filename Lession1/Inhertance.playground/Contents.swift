//: Playground - noun: a place where people can play

import UIKit

//Base class
class Vehicle{
    var currentspeed = 0.0
    var decription: String {
        return "traveling at \(currentspeed) km/h "
    }
    func makeNoise(){
        print("make noise")
    }
}

let demo1 = Vehicle()
print(demo1.decription)

//Subclass

class Bike : Vehicle {
    var hasBasket = false
}
let demo2 = Bike()
demo2.currentspeed = 3.0
print(demo2.decription)

class Tandem : Bike{
    var currentNumberOfPassengers = 0
}

let demo3 = Tandem()
demo3.currentspeed = 20.0
demo3.currentNumberOfPassengers = 2
print(demo3.decription)

//Overriding method
class Train : Vehicle{
    override func makeNoise() {
        print("Choo Choo")
    }
}

let demo4 = Train()
demo4.makeNoise()

//Overriding properties

class Car : Vehicle{
    var gear : Int = 3
    override var decription: String{
        return super.decription + "in gear \(gear)"
    }
}
let demo5 = Car()
print(demo5.decription)
