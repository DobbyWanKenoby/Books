//: [Previous](@previous)

import Foundation

//1
var myArray = [2, 4, 5, 7]
var newArray = myArray.map{$0}
newArray // [2, 4, 5, 7]

//2
newArray = myArray.map{$0*$0}
newArray // [4, 16, 25, 49]

//3
var intArray = [1, 2, 3, 4]
var boolArray = intArray.map{$0 > 2}
boolArray // [false, false, true, true]

//4
let numbers = [1, 2, 3, 4]
let mapped = numbers.map { Array(repeating: $0, count: $0) }
mapped // [[1], [2, 2], [3, 3, 3], [4, 4, 4, 4]]


//5
let milesToDest = ["Moscow":120.0,"Dubai":50.0,"Paris":70.0]
var kmToDest = milesToDest.map { name,miles in [name:miles * 1.6093] }
kmToDest // [["Dubai": 80.465], ["Paris": 112.651], ["Moscow": 193.116]]

//6
var mappedCloseStars = ["Proxima Centauri": 4.24, "Alpha Centauri A": 4.37, "Alpha Centauri B": 4.37]
var newCollection = mappedCloseStars.mapValues{ $0+1 }
newCollection  // ["Proxima Centauri": "5.24", "Alpha Centauri A": "5.37", "Alpha Centauri B": "5.37"]

//7
let numArray = [1, 4, 10, 15]
let even = numArray.filter{ $0 % 2 == 0 }
even // [4, 10]

//8
var starDistanceDict = ["Wolf 359": 7.78, "Alpha Centauri B": 4.37, "Barnard's Star": 5.96]
let closeStars = starDistanceDict.filter { $0.value < 5.0 }
closeStars //["Alpha Centauri B": 4.37]

//9
let cash = [10, 50, 100, 500]
let total = cash.reduce(210, +) // 870

//10
let multiTotal = cash.reduce(210, {$0*$1})
multiTotal // 5250000000
let totalThree = cash.reduce(210, {a,b in a-b})
totalThree // -450

//11
let numbersArray = [1, 2, 3, 4]
let flatMapped = numbersArray.flatMap { Array(repeating: $0, count: $0) }
flatMapped // [1, 2, 2, 3, 3, 3, 4, 4, 4, 4]

//12
let someArray = [[1, 2, 3, 4, 5], [11, 44, 1, 6], [16, 403, 321, 10]]
let filterSomeArray = someArray.flatMap{$0.filter{ $0 % 2 == 0}}
filterSomeArray // [2, 4, 44, 6, 16, 10]

//13
let stringArray = ["1", "2", "3", "four", "5"]
let IntFromStringArray = stringArray.map() { Int($0) }
IntFromStringArray // [1, 2, 3, nil, 5]

//14
let arrayWitoutNil = stringArray.compactMap() { Int($0) }
arrayWitoutNil // [1, 2, 3, 5]

//15
let collectionOne = [1, 2, 3]
let collectionTwo = [4, 5, 6]
var zipSequence = zip(collectionOne ,collectionTwo)
type(of: zipSequence) // Zip2Sequence<Array<Int>, Array<Int>>.Type
// генерация массива из сформированной последовательности
Array(zipSequence) // [(.0 1, .1 4), (.0 2, .1 5), (.0 3, .1 6)]
// генерация словаря на основе последовательности пар значений
let newDictionary = Dictionary(uniqueKeysWithValues: zipSequence)
newDictionary // [1: 4, 3: 6, 2: 5]


//16
func countSidesOfShape(shape: String) -> Int? {
    switch shape {
    case "треугольник":
        return 3;
    case "квадрат":
        return 4;
    case "прямоугольник":
        return 4;
    default:
        return nil;
    }
}

//17
func maybePrintCountSides(shape: String) {
    if let sides = countSidesOfShape(shape: shape) {
        print("Фигура \(shape) имеет \(sides) стороны")
    }else{
        print("Неизвестно количество сторон фигуры \(shape)")
    }
}

//18

func maybePrintCountSides_2(shape: String)  {
    guard let sides = countSidesOfShape(shape: shape) else {
        print("Неизвестно количество сторон фигуры \(shape)")
        return
    }
    print("Фигура \(shape) имеет \(sides) стороны")
}

maybePrintCountSides(shape: "треугольник")
maybePrintCountSides_2(shape: "квадрат")

// DEFER
// 19
func someFunction() {
    defer {
        print("action in defer")
    }
    defer {
        print("another action in defer")
    }
    print("action in function")
}

someFunction()
