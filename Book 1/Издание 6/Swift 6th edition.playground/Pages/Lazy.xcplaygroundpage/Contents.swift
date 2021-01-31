//: [Previous](@previous)

import Foundation

var myCollection = [1,2,3,4,5,6].lazy.map{$0 + 1}

var arrayOfNames = ["Helga", "Bazil", "Alex"]
print(arrayOfNames.count)
let nextName = { arrayOfNames.remove(at: 0) }
arrayOfNames.count //3
nextName()
arrayOfNames.count //2

//4
var baseCollection = [1,2,3,4,5,6]
var myLazyCollection = baseCollection.lazy
type(of:myLazyCollection) // LazyCollection<Array<Int>>.Type
var collection = myLazyCollection.map{$0 + 1}
type(of:collection) // LazyMapSequence<Array<Int>, Int>.Type


//5
var resultCollection = [1,2,3,4,5,6].lazy.map{$0 + 1}.filter{$0 % 2 == 0}
Array(resultCollection) // [2, 4, 6]


