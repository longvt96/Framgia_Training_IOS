//: Playground - noun: a place where people can play

import UIKit

//Khai bao 1 tuple
var tupledemo = (id:"112", name: "Long")
//Truy xuat du lieu
print("\(tupledemo.0)   \(tupledemo.1)")
print("\(tupledemo.id)   \(tupledemo.name)")
// Tien loi cua tuple

//Swapping
var a = 4 , b = 5
(a,b) = (b,a)
print("a= \(a)  b = \(b)")

// 1 ham tra ve nhieu kieu du lieu
func test() -> (String,Int){
    return ("aaa",2);
}

//Khai bao 1 bien dang Optional
var index : Int?
//index = 1
if index == nil{
    print("gia tri rong!")
}else{
    print("Gia tri khac rong!")
}

// Unwrapp
//khi chac chan co gia tri != nil
var tmp: Int? = 3
print("tmp= \(tmp)")
print("tmp = \(tmp!)")

//Optional Binding
if let j = tmp {
    print("\(j)")
}
//Implicitly unwrapped optional
var i : Int? = 112
print("\(i)")
i = nil
print("\(i)")
