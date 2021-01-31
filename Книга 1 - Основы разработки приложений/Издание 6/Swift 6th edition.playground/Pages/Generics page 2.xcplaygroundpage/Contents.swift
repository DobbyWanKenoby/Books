//: [Previous](@previous)

import Foundation

//6
struct Stack<T> {
    var items = [T]()
    init(){}
    init(_ elements: T...){
        self.items = elements
    }
    mutating func push(_ item: T) {
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeLast()
    }
}
var stackOfInt = Stack(1, 2, 4, 5)
type(of:stackOfInt) // Stack<Int>.Type
var stackOfStrings = Stack<String>()
type(of:stackOfStrings) // Stack<String>.Type

//7
func findIndex<T: Equatable>(array: [T], valueToFind: T) -> Int? {
    for (index, value) in array.enumerated() {
        if value == valueToFind {
            return index
        }
    }
    return nil
}
var myArray = [3.14159, 0.1, 0.25]
let firstIndex = findIndex(array: myArray, valueToFind: 0.1) // 1
let secondIndex = findIndex(array: myArray, valueToFind: 31) // nil


//8
extension Stack {
    var topItem: T? {
        return items.isEmpty ? nil : items[items.count - 1]
    }
}
stackOfInt.topItem // 5
stackOfInt.push(7)
stackOfInt.topItem // 7



