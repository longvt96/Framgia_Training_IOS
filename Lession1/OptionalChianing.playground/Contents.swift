//: Playground - noun: a place where people can play

import UIKit

var tmp : Int?
//tmp = 10
class Residence {
    var numberOfRooms = 1
}

class person {
    var room : Residence?
}
let tmp1 = person()
tmp1.room?.numberOfRooms
