//: [Previous](@previous)

import Foundation

public class SomePublicClass { // public класс
    public var somePublicProperty = 0 // public свойство
    var someInternalProperty = 0 // internal свойство
    fileprivate func somePrivateMethod() {} // fileprivate метод
}
class SomeInternalClass { // internal класс
    var someInternalProperty = 0 // internal свойство
    private func somePrivatemethod() {} // private метод
}

private class  SomePrivateClass { // private класс
    var  somePrivateProperty = 0 // private свойство
    func somePrivateMethod() {} // private метод
}

//4
//private func someFunction() -> (SomeInternalClass, SomePrivateClass) {
// тело функции
//}
