//: Playground - noun: a place where people can play

import UIKit

var a = 4,b = 5
//Cấu trúc điều kiện với if
if (a>b){
    print("a lon hon b")
}
// Cấu trúc điều kiên với if...else

if (a>b) {
    print("a lon hon b")
}else{
    print("a nho hon b")
}

//cau truc if let
var c : Int? = 4;
if let x = c {
    print("\(x)")
}

//cau truc guard...else
func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }
    
    print("Hello \(name)!")
    
    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }
    
    print("I hope the weather is nice in \(location).")
}
greet(person: ["name": "John"])
//Cau truc swith cacs

let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("The first letter of the alphabet")
case "z":
    print("The last letter of the alphabet")
default:
    print("Some other character")
}



