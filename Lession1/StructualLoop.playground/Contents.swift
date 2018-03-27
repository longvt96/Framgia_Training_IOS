//: Playground - noun: a place where people can play

import UIKit

//Cau truc lap voi for-in
let array = [1,2,3,4]
for index in 0...3{
    print("\(array[index])")
}
for item in array{
    print("\(item)")
}

var s = 0
for _ in 1...10{
    s += 1
}
print("\(s)")

//Cau truc lap While
var a = 0
var b = 5
while (a < b){
    a += 1
    print("\(a)")
}
a = 10

//Cau truc lap repeat...while
repeat{
    a -= 1
    print("\(a)")
}while (a > b)

//Break và Continue
s = 0
for item in array{
    if item == 3 {
        break;
    }
    s += item
}
print("\(s)")
s = 0
for item in array{
    if item == 3 {
        continue;
    }
    s += item
}
print("\(s)")

