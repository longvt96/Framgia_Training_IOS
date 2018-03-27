//: Playground - noun: a place where people can play

import UIKit

//Tao 1 struct
struct Nhanvien{
    var manv: String;
    var tennv: String
    var nams : Int
    init() {
        manv = ""
        tennv = ""
        nams = 1985
    }
    init(manv : String, tennv: String, nams: Int) {
        self.manv = manv
        self.tennv = tennv
        self.nams = nams
    }
    func show() -> String{
        return "\(manv)  \(tennv)   \(nams)"
    }
    mutating func changed() {
        nams += 1
    }
}
//khoi tao 1 struct
var tmp = Nhanvien(manv: "abc11", tennv: "long", nams: 22)

//su dung
print("\(tmp.show())")

//Khai bao  1 class
class Rectangle{
    var wight: Int = 0
    var heght : Int = 0
    var name : String = ""
    init() {
        wight = 10
        heght = 20
        name = "long"
    }
    init(wight : Int , heght: Int ,  name: String) {
        self.wight = wight
        self.heght = heght
        self.name = name
    }
    func showdetail(){
        print("\(wight)  \(heght)  \(name)")
    }
}
//su dung
var tmpclass = Rectangle(wight: 10, heght: 100, name: "Long")

tmpclass.showdetail()

