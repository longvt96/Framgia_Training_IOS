//: Playground - noun: a place where people can play

import UIKit

//khai bao:
struct demo{
    var count: Int
    subscript(index: Int) -> Int {
        get {
            return index + 10
        }
        set(newValue) {
            count += index
        }
    }
}
var tmp = demo(count: 10)
tmp[10]
tmp.count

//read-only
struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}
let threeTimesTable = TimesTable(multiplier: 3)
print("six times three is \(threeTimesTable[6])")

struct decint{
    var array = [1,2,3,4,5,6]
    subscript (item : Int) -> Int{
        return item - 1
    }
}
let tmp1 = decint()
tmp[2]
