import Foundation

//1
var someText = "Я учу Свифт"

//2
// создаем переменную orksName с неявным определением типа String
var orksName = "Рухард"
// создаем переменную elfsName с явным определением типа String
var elfsName: String = "Эанор "
// изменим значения переменных
orksName = "Гомри"
elfsName = "Лиасель"

// 3
//let firstHobbitsName // ОШИБКА: Type annotation missing in pattern (пропущено указание типа данных)

// примечание
var str: String
str = "Hello, playground"
print(str)


//4
// неявно определим целочисленный тип данных
var variableOne = 23
// явно определим целочисленный типа данных и произведем копирование значения
var variableOneCopy: Int = variableOne
print(variableOneCopy)
// изменим значение в первой переменной
variableOne = 25
print(variableOneCopy)
print(variableOne)

//5
// объявим переменную знакового целочисленного типа и присвоим ей значение
var signedNum: Int = -32
// объявим константу беззнакового целочисленного типа
// и проинициализируем ей значение
let unsignedNum: UInt = 128

// примечание
let someNum: Int = 12
let anotherNum: Int8 = 14
// someNum = anotherNum // ОШИБКА: Cannot assign value of type 'Int8' to type 'Int' (Нельзя передать значение типа Int8 в Int)

// 6

// минимальное значение параметра типа Int8
let minInt8 = Int8.min // -128
// максимальное значение параметра типа Int8
let maxInt8 = Int8.max // 127
// минимальное значение параметра типа UInt8
let minUInt8 = UInt8.min // 0
// максимальное значение параметра типа UInt8
let maxUInt8 = UInt8.max // 255


// 7
// дробное число типа Float с явным указанием типа
let numFloat: Float = 104.3
// дробное число типа Double с явным указанием типа
let numDouble: Double = 8.36
// дробное число типа Double с неявным указанием типа
let someNumber = 8.36

// примечание
// let variableErr1 = .12 // ОШИБКА: .12' is not a valid floating point literal; it must be written '0.12' (.12 не является корректным числом с плавающей точкой, используйте 0.12)

//
// let res = 1 + 2 // 3
// let res = + 3
// let res = 4 - 3 // 1
// let res = -5
// let res = 4 * 5 // 20
// let res = 20 / 4 // 5
// let res = 19 % 4 // 3

//8
// целочисленные константы
let numOne = 19
let numTwo = 4
// константы, имеющие тип числа с плавающей точкой
let numThree = 3.13
let numFour = 1.1

// 9
// операция сложения
let sum = numOne + numTwo // 23
// операция вычитания
let diff = numOne - numTwo // 15
// операция умножения
let mult = numOne * numTwo // 76
// операция деления
let qo = numOne / numTwo // 4

// 10
// операция сложения
let sumD = numThree + numFour // 4,23
// операция вычитания
let diffD = numThree - numFour // 2,03
// операция умножения
let multD = numThree * numFour //  3,443
// операция деления
let qoD = numThree / numFour // 2,84545454545455

// 11
// операция получения остатка от деления
let res1 = numOne % numTwo // 3
let res2 = -numOne % numTwo // -3
let res3 = numOne %  -numTwo // 3

// 12
// дробные константы
let firstFloat: Float = 3.14
let secondFloat: Float = 1.01
// операция получения остатка от деления
let result1 = firstFloat.truncatingRemainder(dividingBy: secondFloat) // 0.1100001
let result2 = -firstFloat.truncatingRemainder(dividingBy: secondFloat) // -0.1100001
let result3 = firstFloat.truncatingRemainder(dividingBy: -secondFloat) // 0.1100001

//13
// переменная типа Int
let numberInt = 19
// переменная типа Double
let numberDouble = 3.13
// операция перемножения чисел
let resD = Double(numberInt) * numberDouble // 59,47
let resI = numberInt * Int(numberDouble) // 57

//14
// переменная типа Int
var count = 19
// прибавим к ней произвольное число
count += 5 // 24
/* эта операция аналогична выражению
count = count + 5 */
// умножим его на число 3
count *= 3 // 72
/* эта операция аналогична выражению
count = count * 3 */
// вычтем из него число 3
count -= 3 // 69
/* эта операция аналогична выражению
count = count - 3 */
// найдем остаток от деления на 8
count %= 8 // 5
/* эта операция аналогична выражению
count = count % 8 */

//15
// переменная типа Int
var itterationValue = 19
// увеличим ее значение с использованием арифметической операции сложения
itterationValue = itterationValue + 1 // 20
// увеличим ее значение с использованием составного оператора присваивания
itterationValue += 1 // 21

//16
// 17 в десятичном виде
let decimalInteger = 17
// 17 в двоичном виде
let binaryInteger = 0b10001
// 17 в восьмеричном виде
let octalInteger = 0o21
// 17 в шестнадцатеричном виде
let hexadecimalInteger = 0x11

//17
// десятичное число
let deciamlDouble = 12.1875 // 12,1875
// десятичное число с экспонентой
// соответствует выражению
// exponentDouble = 1.21875*101
let exponentDouble = 1.21875e1 // 12,1875
// шестнадцатеричное число с экспонентой
// соответствует
// выражению hexadecimalDouble = 0xC.3*20
let hexadecimalDouble = 0xC.3p0 // 12,1875

// 18
let number = 1_000_000 // 1000000
let nextNumber = 1000000 // 1000000

// 19
var myWallet: Double = 0
let incomeAfterOperation: Double = 0.1

//20
myWallet += incomeAfterOperation
print(myWallet)
myWallet += incomeAfterOperation
print(myWallet)
myWallet += incomeAfterOperation
print(myWallet)

// 21
// import Foundation
var decimalWallet: Decimal = 0
let income: Decimal = 0.1
decimalWallet += income
print(decimalWallet)
decimalWallet += income
print(decimalWallet)
decimalWallet += income
print(decimalWallet)

// 22
let char: Character = "a"
print(char)

//23
// константа типа String
// тип данных задается явно
let stringOne: String = "Dragon"

//24
let language = "Swift" // тип данных - String
let version = "5" // тип данных — String

//25
// с помощью пустого строкового литерала
var emptyString = ""
// с помощью инициализатора типа String
var anotherEmptyString = String()

//26
let longString = """
Это многострочный
строковый литерал
"""

//27
// инициализация строкового значения
let notEmptyString = String("Hello, Troll!")

//28
// константа типа Double
let someDoubleNumber = 74.22
// строка, созданная на основе константы типа Double
let someStringNumber = String(someDoubleNumber) // "74.22"

//29
// переменная типа String
let name = "Дракон"
// константа типа String c использованием интерполяции
let hello = "Привет, меня зовут \(name)!"
// интерполяция с использованием выражения
let meters: Double = 10
let text = "Моя длина \(meters * 3.28) фута"
// выведем значения на консоль
print(hello)
print(text)

//30
// константа типа String
let firstText = "Мой вес "
// переменная типа Double
let weight = 12.4
// константа типа String
let secondText = " тонны"
// конкатенация строк при инициализации значения новой переменной
let resultText = firstText + String(weight) + secondText
print(resultText)

//31
let firstString = "Swift"
let secondString = "Objective-C"
let anotherString = "Swift"
firstString == secondString // false
firstString == anotherString // true

//32
let myCharOverUnicode: Character = "\u{041A}"
myCharOverUnicode //К

//33
let stringOverUnicode = "\u{41C}\u{438}\u{440}\u{20}\u{412}\u{430}\u{43C}\u{21}"
stringOverUnicode // "Мир Вам!"

//34
// константа с неявно заданным логическим типом
let isDragon = true
// константа с явно заданным логическим типом
let isKnight: Bool = false

//35
// логическая переменная
//var isDragon = true
// конструкция условия
if isDragon {
    print("Привет, Дракон!")
} else {
    print("Привет, Тролль!")
}

//36
let someBool = true
// инвертируем значение
!someBool // false
someBool // true

//37
//let firstBool = true, secondBool = true, thirdBool = false
//// группируем различные условия
//let one = firstBool && secondBool // true
//let two = firstBool && thirdBool // false
//let three = firstBool && secondBool && thirdBool // false
//
////38
///let firstBool = true, secondBool = false, thirdBool = false
//// группируем различные условия
//let one = firstBool || secondBool // true
//let two = firstBool || thirdBool // true
//let three = secondBool || thirdBool // false

//39
//let firstBool = true, secondBool= false, thirdBool = false
//let resultBool = firstBool && secondBool || thirdBool // false
//let resultAnotherBool = thirdBool || firstBool && firstBool // true

// 40
//let firstBool = true, secondBool= false, thirdBool = true
//let resultBool = firstBool && (secondBool || thirdBool) // true
//let resultAnotherBool = (secondBool || (firstBool && thirdBool)) && thirdBool // true

// 41
// Утверждение "1 больше 2"
1 > 2 // false
// вернет false, так как оно ложно
// Утверждение "2 не равно 2"
2 != 2 // false
// вернет false, так как оно ложно
// Утверждение "1 плюс 1 меньше 3"
(1+1) < 3 // true
// вернет true, так как оно истинно
// Утверждение "5 больше или равно 1"
5 >= 1 //  true
// вернет true, так как оно истинно

// 42
// определяем псевдоним для типа UInt8
typealias ageType = UInt8
/* создаем переменную типа UInt8,
используя псевдоним */
var myAge: ageType = 29

// 43
// определяем псевдоним для типа String
typealias TextType = String
typealias WordType = String
typealias CharType = String
//создаем константы каждого типа
//let someText: TextType = "Это текст"
let someWord: WordType = "Слово"
let someChar: CharType = "Б"
let someString: String = "Строка типа String"

// 44
// объявляем псевдоним
typealias AgeType = UInt8
/* используем свойство типа
UInt8 через его псевдоним */
let maxAge = AgeType.max //255

// 45
var intVar = 12

//46
let myVar = 3.54
print(type(of: myVar))

//47
"string1" < "string2" //true
//true < false // error: Binary operator '<' cannot be applied to two 'Bool' operands

// 48
let stringForHash = "Строка текста"
let intForHash = 23
let boolForHash = false

stringForHash.hashValue //109231433150392402
intForHash.hashValue //5900170382727681744
boolForHash.hashValue //820153108557431465


//
// 2.7 Где использовать фундаментальные типы
//

var temperature: Int = 32

var userRating: Int = -182

var enemyCount: UInt = 5

var windSpeed: Float = 5.2 // 5.2 метра в секунду

let pi: Double = 3.1415926535

var newCriptoMoney = Decimal(string: "0.100000000000000000000000000000000000001")

let userLogin = "dexter"

let organizationName = "Рога и копыта"

var isSwitcherOn = true

var userOnline = false

//typealias Group = Array<Student>
// Тип Student – это структура, описывающая студента

typealias MapObjectProperties = [String: Any]

//typealias TransitionDelegate = UIViewController & UIViewControllerTransitionDelegate

typealias Completion = (Int) -> String
func someMethod(completion: Completion) {
    // ...
}
// Идентификатор Completion несет для читателя кода больше информации о предназначении, чем (Int) -> String
