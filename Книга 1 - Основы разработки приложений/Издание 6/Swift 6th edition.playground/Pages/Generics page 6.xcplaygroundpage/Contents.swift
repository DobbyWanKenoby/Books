//: [Previous](@previous)

import Foundation

// 26

// --- НЕ ВСТАВЛЯТЬ

protocol Vehicle {
    associatedtype Identifier
    var uid: Identifier { get set }
}

struct Car: Vehicle {
    var uid: Int
}

struct Truck: Vehicle {
    var uid: String
}

// ---

func getCar() -> some Vehicle {
    return Car(uid: 54)
}
 
let myCar = getCar() // Car

