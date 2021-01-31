import Foundation

let possibleString = "1945"
let convertPossibleString = Int(possibleString) // 1945
let unpossibleString = "Одна тысяча сто десять"
let convertUnpossibleString = Int(unpossibleString) // nil
print( type(of: convertPossibleString) )
print( type(of: convertUnpossibleString) )

var a: Optional<Int> = 12

//primechanie
var x1 = Int("12")
type(of: x1) //Optional<Int>.Type
var x2 = Int(43.2)
type(of: x2) //Int.Type

// 7.3a
var optionalChar: Optional<Character> = "a"

//7.3
var b = Int("1110")
//var result = a + 11 // Ошибка несоответсвия типов

//7.4
var xCoordinate: Int? = 12

//5
xCoordinate //12
xCoordinate = nil
xCoordinate //nil

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
type(of: optVar!) // Int

//7-10
var optString: String? = "Vasiliy Usov2"
var unwrapperString = optString!
print( "My name is \(unwrapperString)" )

//12
var optOne: UInt? = nil
var optTwo: UInt? = 32

optOne != nil // false
optTwo != nil // true



//7-11
var wrapInt: Double! = 3.14
// сложение со значением базового типа не вызовет ошибок
wrapInt + 0.12 // 3.26

//7-12
var tuple: (code: Int,message: String)? = nil
tuple = (404, "Page not found") // code 404, message "Page not found")

//7-13
var tupleWithoptelements: (Int?, Int) = (nil, 100)
tupleWithoptelements.0 // nil
tupleWithoptelements.1 // 100


var fiveMarkCount: Int? = 8
var allCakesCount = 0;
// определение наличия значения
if fiveMarkCount != nil {
    // количество пирожных за каждую пятерку
    let  cakeForEachFiveMark = 2
    // общее количество пирожных
    allCakesCount = cakeForEachFiveMark * fiveMarkCount! // 16
}

//14
var markCount: Int? = 8
// определение наличия значения
if let marks = markCount {
    print("Всего \(marks) оценок")
}

//15
var pointX: Int? = 10
var pointY: Int? = 3

if let x = pointX, let y = pointY {
    print("Точка установлена на плоскости")
}

if let x = pointX, x > 5 {
    print("Координата Х больше 5")
}

//18
/* переменная типа String,
 содержащая количество золотых монет
 в сундуке нового дракона */
var coinsInNewChest = "140"
/* переменная типа Int,
 в которой будет храниться общее
 количество монет у всех драконов */
var allCoinsCount = 1301
/* извлекаем значение опционала
 в новую переменную */
var coins = Int(coinsInNewChest)
/* проверяем существование значения
 с использованием созданной переменной */
if coins != nil{
    allCoinsCount += coins!
} else {
    print("У нового дракона отсутствует золото")
}


//21
//var optionalInt: Int? = 20
//var mustHaveResult = optionalInt ?? 0

var optionalInt: Int? = 20
var mustHaveResult: Int = 0
if let unwrapped = optionalInt {
    mustHaveResult = unwrapped
} else {
    mustHaveResult = 0
}
mustHaveResult








#if swift(>=5)
print("5")
#else
print("<5")
#endif
