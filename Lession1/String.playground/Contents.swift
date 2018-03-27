//: Playground - noun: a place where people can play

import UIKit

// khai báo 1 bien String
var str1 : String

var str2 = "ABC"

let str3 = "Xin chao"

//Khai báo 1 chuỗi có nhiều dòng
var str5 = """

This string starts with a line break.
It also ends with a line break.

"""
str1 = "Hello"
//in ra man hinh
print("\(str1)")

//Nối 2 String
var str4 = str1 + str2

//so sánh 2 chuỗi
if str4 == str1 {
    print("Hai chuoi giong nhau")
}else{
    print("Hai chuoi khac nhau!")
}

//bổ sung vào chuỗi
str4 += ".Nice to meet you"
print("Sau khi noi them : \(str4)")



