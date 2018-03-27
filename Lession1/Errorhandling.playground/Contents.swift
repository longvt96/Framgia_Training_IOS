//: Playground - noun: a place where people can play

import UIKit

func canThrowErrors() throws -> String{
    return "aa"
}

func cannotThrowErrors() -> String{
    return "bcd"
}

enum VendingMachineError: Error {
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStock
}
struct Item {
    var price: Int
    var count: Int
}
//Propagating error using throw function

class VendingMachine {
    var inventory = [
        "Candy Bar": Item(price: 12, count: 7),
        "Chips": Item(price: 10, count: 4),
        "Pretzels": Item(price: 7, count: 11)
    ]
    var coinsDeposited = 0
    
    func vend(itemNamed name: String) throws {
        guard let item = inventory[name] else {
            throw VendingMachineError.invalidSelection
        }
        
        guard item.count > 0 else {
            throw VendingMachineError.outOfStock
        }
        
        guard item.price <= coinsDeposited else {
            throw VendingMachineError.insufficientFunds(coinsNeeded: item.price - coinsDeposited)
        }
        
        coinsDeposited -= item.price
        
        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem
        
        print("Dispensing \(name)")
    }
}

//Handling error using do - catch
enum tmperror : Error{
    case max
    case min
}
func check(tmp : Int) throws -> Int{
    if (tmp < 0 ) {
        throw tmperror.min
    }
    if (tmp > 100){
        throw tmperror.max
    }
    return tmp
}
var tmp = -1
do {
    try check(tmp: tmp)
} catch tmperror.min {
    print("nho hon 0 ")
}catch tmperror.max{
    print("lon hon 100")
}
