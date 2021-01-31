//: [Previous](@previous)

import Foundation

//1
func swapTwoInts( a: inout Int,  b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var firstInt = 4010
var secondInt = 13
swapTwoInts(a: &firstInt, b: &secondInt)
firstInt // 13
secondInt // 4010

//2
func swapTwoValues<T>( a: inout T,  b: inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var firstString = "one"
var secondString = "two"
swapTwoValues(a: &firstString, b: &secondString)
firstString // "two"
secondString // "one"

//3
struct IntStack {
    var items = [Int]()
    mutating func push(_ item: Int) {
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }
}

//4
struct Stack<T> {
    var items = [T]()
    mutating func push(_ item: T) {
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeLast()
    }
}

//5
var stackOfStrings = Stack<String>()
stackOfStrings.push("uno")
stackOfStrings.push("dos")
let fromTheTop = stackOfStrings.pop() // "dos"


