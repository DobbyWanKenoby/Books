//: [Previous](@previous)

import Foundation

//1
var rangeInt = 1..<5

//2
// задаем тип данных явно
var someRangeInt: Range<Int> = 1..<10
type(of:someRangeInt) // Range<Int>.Type
// тип данных определен автоматически
// на основании переданного значения (неявно)
var anotherRangeInt = 51..<59
type(of:anotherRangeInt) // Range<Int>.Type

//3
// диапазон с элементами типа String
var rangeString = "a"..<"z"
type(of:rangeString) // Range<String>.Type

// диапазон с элементами типа Character
var rangeChar: Range<Character> = "a"..<"z"
type(of:rangeChar) // Range<Character>.Type

// диапазон с элементами типа Double
var rangeDouble = 1.0..<5.0
type(of:rangeDouble ) // Range<Double>.Type


//4
var oneSideRange = ..<5
type(of: oneSideRange) // PartialRangeUpTo<Int>.Type

//5
var fullRange = 1...10
type(of: fullRange)

//7
let infRange = 2...
type(of: infRange) // PartialRangeFrom<Int>.Type
let collection = [1, 6, 76, 12, 51]
print( collection[infRange] )

//3а
var firstElement = 10
var lastElement = 18
var myRange = firstElement...lastElement
type(of: myRange) // ClosedRange<Int>.Type

//8
var intR = 1...10
var floatR: ClosedRange<Float> = 1.0...2.0
var charR: ClosedRange<Character> = "a"..."z"

intR.count // 10

floatR.contains(1.4) // true

// 9
var emptyR = 0..<0
emptyR.count // 0
emptyR.isEmpty // true

var notEmptyR = 0...0
notEmptyR.count // 1
notEmptyR.isEmpty // false

//10

var anotherIntR = 20..<34
anotherIntR.lowerBound // 20
anotherIntR.upperBound // 34
anotherIntR.min() // 20
anotherIntR.max() // 33
