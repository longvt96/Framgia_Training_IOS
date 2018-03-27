//: Playground - noun: a place where people can play

import UIKit

// Demo closure khong co tham so va gia tri tra ve

let sayhello = {() ->Void in
    print("Say hello!")
    }
sayhello()

// Closure co tham so va gt tra ve

let min  = {(a: Int, b: Int) -> Int in
    return a<b ? a:b
}
print("\(min(4,5))")

let filterNumbers = [1, 2, 3, 4, 5]
let filteredNumbers = filterNumbers.filter { $0 > 3 }
print(filteredNumbers)


let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
//sap xep 1 mang theo cach bt
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)
//Sap xep mang voi closure
reversedNames  = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1>s2
})
print("\(reversedNames)")

//innferring Type From Context
let inferring  = names.sorted { (s1, s2) -> Bool in
    return s1>s2
}

//Implicit Returns from Single-Expression Closures
let implictt = names.sorted(by: { s1, s2 in
    s1>s2
})

//Shorthand Argument Names
let shorthand = names.sorted { $0 < $1}

print("\(shorthand)")

//Map method
let numbers = [1,2,3,4,5]

let map = numbers.map { $0 * 2 }
let map2 = numbers.map { (number) in
    return number * 2
}
//filter method
let filter = numbers.filter{ $0 > 2}
filter

//forEach
let foreach = numbers.forEach{print("\($0)")}

//reduce
let reduce = numbers.reduce(0) { result, number in
    result + number
}
reduce

//fillmap
let nilnumbers  = [12,3,nil,1,3,nil]
let fillmap = nilnumbers.filter { (number) -> Bool in
    return number != nil
}
fillmap

//Capture Value
func sum(value1 :Int) -> () ->Int{
    var tmp : Int  = value1
    func sumin_side () -> Int{
        print("run here!")
        return tmp + 100
    }
    return sumin_side
}
let tong = sum(value1: 100)

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}
var tmp11 = makeIncrementer(forIncrement: 100)

 makeIncrementer(forIncrement: 100)()
print("\(tmp11())")

