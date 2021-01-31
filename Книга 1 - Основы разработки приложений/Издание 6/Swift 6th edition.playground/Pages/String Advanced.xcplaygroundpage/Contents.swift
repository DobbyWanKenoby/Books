//: [Previous](@previous)

import Foundation

var str = "Hello!"
str.count //6

//3
var char: Character = "\u{65}\u{301}"
char // "é"

//4
var anotherChar: Character = "\u{65}\u{301}"
anotherChar // "é"

//5
char == anotherChar //true

//6
var thumbsUp = "\u{1f44d}" //"👍"
var blackSkin = "\u{1f3fd}" //"🏽"
var combine = "\u{1f44d}\u{1f3fd}" //"›👍🏽"

//7
let cafeSimple = "café" //"café"
let cafeCombine = "cafe\u{301}" //"café"
cafeSimple.count //4
cafeCombine.count //4

//
let name = "e\u{301}lastic" //"élastic"
var index = name.startIndex

//9
// получим первый графем-кластер строки
let firstChar = name[index]
firstChar // "é"
type(of: firstChar) //Character.Type

//10
type(of: index) //String.Index.Type

//11
var indexLastChar = name.endIndex
//name[indexLastChar] //Fatal error: String index is out of bounds

//12
var lastChar = name.index(before: indexLastChar)
name[lastChar] //"c"

//14
var fourCharIndex = name.index(name.startIndex, offsetBy:3)
name[fourCharIndex] //"s"

//15
name.count //7
name.unicodeScalars.count //8

var abc = "abcdefghijklmnopqrstuvwxyz"
var firstCharIndex = abc.startIndex
var fourthCharIndex = abc.index(firstCharIndex, offsetBy:3)
var subAbc = abc[firstCharIndex...fourthCharIndex]
subAbc //"abcd"
type(of: subAbc) //Substring.Type

//17
type( of:String(subAbc) ) // String.Type

//18
var subStr = abc[fourthCharIndex...]
subStr //"defghijklmnopqrstuvwxyz"
