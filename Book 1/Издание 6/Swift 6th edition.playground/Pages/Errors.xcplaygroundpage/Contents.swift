//: [Previous](@previous)

import Foundation

//1
enum VendingMachineError: Error {
    case InvalidSelection
    case InsufficientFunds(coinsNeeded: Int)
    case OutOfStock
}

//2
//throw VendingMachineError.InsufficientFunds(coinsNeeded: 5)

//3
// ... удалено
// для проверки вставить

//4
struct Item {
    var price: Int
    var count: Int
}
class VendingMachine {
    var inventory = [
        "Candy Bar": Item(price: 12, count: 7),
        "Chips": Item(price: 10, count: 4),
        "Pretzels": Item(price: 7, count: 11)
    ]
    var coinsDeposited = 0
    func dispenseSnack(snack: String) {
        print("Dispensing \(snack)")
    }
    func vend(itemNamed name: String) throws {
        guard var item = inventory[name] else {
            throw VendingMachineError.InvalidSelection
        }
        guard item.count > 0 else {
            throw VendingMachineError.OutOfStock
        }
        guard item.price <= coinsDeposited else {
            throw VendingMachineError.InsufficientFunds(coinsNeeded: item.price - coinsDeposited)
        }
        coinsDeposited -= item.price
        item.count -= 1
        inventory[name] = item
        dispenseSnack(snack: name)
    }
}

//5
let favoriteSnacks = [
    "Alice": "Chips",
    "Bob": "Licorice",
    "Eve": "Pretzels",
]
func buyFavoriteSnack(person: String, vendingMachine: VendingMachine) throws {
    let snackName = favoriteSnacks[person] ?? "Candy Bar"
    try vendingMachine.vend(itemNamed: snackName)
}

//6
var vendingMachine = VendingMachine()
vendingMachine.coinsDeposited = 8
do {
    try buyFavoriteSnack(person: "Alice", vendingMachine: vendingMachine)
} catch VendingMachineError.InvalidSelection {
    print("Invalid Selection.")
} catch VendingMachineError.OutOfStock {
    print("Out of Stock.")
} catch VendingMachineError.InsufficientFunds(let coinsNeeded) {
    print("Недостаточно средств. Пожалуйста, внесите еще \(coinsNeeded) монет(ы).")
}
// выводит "Недостаточно средств. Пожалуйста, внесите еще 2 монет(ы)."

// 10
//struct NetworkError: Error {}
//
//// 11
//do {
//    // принудительно вызываем исключительную ситуацию
//    throw NetworkError()
//} catch is NetworkError  {
//    print("it is network error")
//} catch {
//   // ...
//}

// 12
struct NetworkError: Error {
    var code: Int
    func description() -> String {
        return "it is network error with code \(code)"
    }
}

do {
    // принудительно вызываем исключительную ситуацию
    throw NetworkError(code: 404)
} catch let error as NetworkError  {
    print(error.description())
} catch {
   // ...
}
