//: [Previous](@previous)

import Foundation

// 30

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

func getCar<T: Vehicle>() -> T{
    return Car(uid: 22) as! T
}
 
let a: Car = getCar()
 
//let b = getCar() // ОШИБКА, Тип не указан
