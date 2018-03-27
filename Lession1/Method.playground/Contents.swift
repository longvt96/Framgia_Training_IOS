//: Playground - noun: a place where people can play

import UIKit

//vi du ve method

class Count{
    var dem : Int = 0
    func  increment() {
        dem += 1
    }
    func incrementcount (count: Int) {
        increment()
        dem += count
    }
}

//self properties

class Pointtmp{
    var x: Int
    var y: Int
    func istotheright(x: Int) ->Bool{
        return self.x > x
    }
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}
let tmp = Pointtmp(x: 10, y: 20)
tmp.istotheright(x: 20)

//mutating method
enum TriStateSwitch {
    case off, low, high
    mutating func next() {
        switch self {
        case .off:
            self = .low
        case .low:
            self = .high
        case .high:
            self = .off
        }
    }
}
var ovenLight = TriStateSwitch.low
ovenLight.next()
ovenLight.next()

//Static method
struct LevelTracker {
    static var highestUnlockedLevel = 1
    var currentLevel = 1
    
    static func unlock(_ level: Int) {
        if level > highestUnlockedLevel { highestUnlockedLevel = level }
    }
}

class Player {
    let playerName: String
    func complete(level: Int) {
        LevelTracker.unlock(level + 1)
    }
    init(Playname: String) {
        playerName = Playname
    }
}




