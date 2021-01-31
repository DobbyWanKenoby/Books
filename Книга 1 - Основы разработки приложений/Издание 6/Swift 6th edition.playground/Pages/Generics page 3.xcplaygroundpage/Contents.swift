//: [Previous](@previous)

import Foundation

//9
protocol Container {
    associatedtype  ItemType
    mutating func append(item: ItemType)
    var count: Int { get }
    subscript(i: Int) -> ItemType { get }
}

//10
struct Stack<T>: Container {
    typealias ItemType = T
    var items = [T]()
    var count: Int {
        return items.count
    }
    init(){}
    init(_ elements: T...){
        self.items = elements
    }
    subscript(i: Int) -> T {
        return items[i]
    }
    mutating func push(item: T) {
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeLast()
    }
    mutating func append(item: T) {
        items.append(item)
    }
}

// 21

protocol Vehicle {
    var uid: Int { get set }
}

// 22

struct Car: Vehicle {
    var uid: Int
}

struct Truck: Vehicle {
    var uid: Int
}

// 23

func getCar() -> Vehicle {
    return Car(uid: 93)
}
