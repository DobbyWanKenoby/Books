import Foundation

let possibleString = "1945"
let convertPossibleString = Int(possibleString) // 1945
let unpossibleString = "Одна тысяча сто десять"
let convertUnpossibleString = Int(unpossibleString) // nil
print( type(of: convertPossibleString) )
print( type(of: convertUnpossibleString) )

var a: Optional<Int> = 12

//7.3
var b = Int("1110")
//var result = a + 11 // Ошибка несоответсвия типов

//7.4
var dragonAge: Int? = 230

// 7.6
var someOptional: Bool? // nil

//7-7
var optionalVar = Optional ("stringValue")
optionalVar // "stringValue"
type(of: optionalVar) // Optional<String>

//7-8
var a1: Int = 4
var b1: Int? = 5
//a1+b1 // ОШИБКА. несоответствие типов

//7-9
var optVar: Int? = 12
var intVar = 34
var result = optVar! + 34

//7-10
var optString: String? = "Vasiliy Usov2"
var unwrapperString = optString!
print( "My name is \(unwrapperString)" )

//7-11
var wrapInt = 3.14
wrapInt + 0.12 // 3.26

//7-12
var tuple: (code: Int,message: String)? = nil
tuple = (404, "Page not found") // code 404, message "Page not found")

//7-13
var tupleWithoptelements: (Int?, Int) = (nil, 100)
tupleWithoptelements.0 // nil
tupleWithoptelements.1 // 100

#if swift(>=5)
print("5")
#else
print("<5")
#endif
