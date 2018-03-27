//: Playground - noun: a place where people can play

import UIKit
//Tạo ham
func findmax (a:Int, b:Int) -> Int{
    return a>b ?a:b
}

//Tao thu tuc
func hello(){
    print("Hello")
}
//Su dung ham
findmax(a: 4, b: 5)
hello()

//Ham khong tham so
func sayhello() -> String{
    return "Hello"
}
print("\(sayhello())")

//Ham nhieu tham so
func sayhello(firstname: String, lastname: String) -> String{
    return "Hello "+lastname+" "+firstname
}
print("\(sayhello(firstname: "vu", lastname: "long"))")

//Ham khong co gia tri tra ve
func sayhello(name: String){
    print("Hello \(name)")
}
sayhello(name: "long")

//Ham co 1 gia tri tra ve
func sum(tmp: Int) -> Int{
    var s = 0
    for index in 1...tmp{
        s += index
    }
    return s
}
print("\(sum(tmp: 4))")

// Ham tra ve nhieu gia tri
func minmax(array: [Int]) -> (min: Int, max: Int){
    var tmp1 = array[0]
    var tmp2 = array[1]
    for value in array{
        if value < tmp1{
            tmp1 = value
        }
        if value > tmp2{
            tmp2  = value
        }
    }
    return (tmp1,tmp2)
}
print("\(minmax(array: [1,2,3,4,5]))")

//Optional typle function
func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
if let tmp = minMax(array: [1,2,3,4,5]){
    print("min \(tmp.min)  max \(tmp.max)" )
}

//Default paramater value
func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
    
}
someFunction(parameterWithoutDefault: 3, parameterWithDefault: 6) // parameterWithDefault is 6
someFunction(parameterWithoutDefault: 4) // parameterWithDefault is 12

//Variadic parameter
func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)
// returns 3.0, which is the arithmetic mean of these five numbers
arithmeticMean(3, 8.25, 18.75)
// returns 10.0, which is the arithmetic mean of these three numbers

//in-out
func swaptmp( a : inout Int ,b: inout Int){
    let tmp = a
    a = b
    b = tmp
}
var x1 = 3 , x2 = 4
swaptmp(a: &x1, b: &x2)

//Nested Functions
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backward ? stepBackward : stepForward
}
var currentValue = -4
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
while currentValue != 0 {
    print("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}
print("zero!")

//Function type as parameter type
func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}

