//: [Previous](@previous)

import Foundation

//1
protocol SomeProtocol {
    var mustBeSettable: Int { get set }
    var doesNotNeedToBeSettable: Int { get }
}

//2
struct SomeStruct: SomeProtocol {
    var mustBeSettable: Int
    let doesNotNeedToBeSettable: Int
    func getSum() -> Int {
        return self.mustBeSettable + self.doesNotNeedToBeSettable
    }
}

//3
protocol AnotherProtocol {
    static var someTypeProperty: Int { get }
}

//4
struct AnotherStruct: SomeProtocol, AnotherProtocol {
    var mustBeSettable: Int
    let doesNotNeedToBeSettable: Int
    static var someTypeProperty: Int = 3
    func getSum() -> Int {
        return self.mustBeSettable
            + self.doesNotNeedToBeSettable
            + AnotherStruct.someTypeProperty
    }
}

//5
protocol RandomNumberGenerator {
    var randomCollection: [Int] { get set }
    func getRandomNumber() -> Int
    mutating func setNewRandomCollection(newValue: [Int])
}

//6
struct RandomGenerator: RandomNumberGenerator {
    var randomCollection: [Int] = [1,2,3,4,5]

    func getRandomNumber() -> Int {
        if let randomElement = randomCollection.randomElement() {
            return randomElement
        }
        return 0
    }

    mutating func setNewRandomCollection(newValue: [Int]) {
        self.randomCollection = newValue
    }
}

class RandomGeneratorClass: RandomNumberGenerator {
    var randomCollection: [Int] = [1,2,3,4,5]

    func getRandomNumber() -> Int {
        if let randomElement = randomCollection.randomElement() {
            return randomElement
        }
        return 0
    }

    func setNewRandomCollection(newValue: [Int]) {
        self.randomCollection = newValue
    }
}

//7
protocol Named {
    init(name: String)
}

class Person: Named {
    var name: String
    required init(name: String){
        self.name = name
    }
}

//8

func getHash<T: Hashable>(of value: T) -> Int {
    return value.hashValue
}

//9
getHash(of: 5)
getHash(of: "Swift")

//10

protocol HasValue {
    var value: Int { get set }
}

class ClassWithValue: HasValue {
    var value: Int
    init(value: Int) {
        self.value = value
    }
}

struct StructWithValue: HasValue {
    var value: Int
}

// коллекция элементов
let objects: [Any] = [
    2,
    StructWithValue(value: 3),
    true,
    ClassWithValue(value: 6),
    "Usov"
]

//11
for object in objects {
    if let elementWithValue = object as? HasValue {
        print("Значение \(elementWithValue.value)")
    }
}

//12
for object in objects {
    print(object is HasValue)
}

//13
protocol GeometricFigureWithXAxis {
    var x: Int { get set }
}

protocol GeometricFigureWithYAxis {
    var y: Int { get set }
}

protocol GeometricFigureTwoAxis: GeometricFigureWithXAxis, GeometricFigureWithYAxis {
    var distanceFromCenter: Float { get }
}

struct Figure2D: GeometricFigureTwoAxis {
    var x: Int = 0
    var y: Int = 0
    var distanceFromCenter: Float {
        let xPow = pow(2, Double(self.x))
        let yPow = pow(2, Double(self.y))
        let length = sqrt(xPow + yPow)
        return Float(length)
    }
}

Figure2D(x: 10, y: 5).distanceFromCenter //

//14
protocol SuperProtocol { }
protocol SubProtocol: class, SuperProtocol { }

class  ClassWithProtocol: SubProtocol { } // корректно
//struct StructWithProtocol: SubProtocol { } // вызовет ошибку



