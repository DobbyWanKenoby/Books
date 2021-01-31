//: [Previous](@previous)

import Foundation

func printMessage() -> Void {
    print("Сообщение принято")
}
// вызываем функцию по ее имени
printMessage()

//2
func sumTwoInt(a: Int, b: Int){
    print("Результат операции - \(a+b)")
}
sumTwoInt(a: 10, b: 12)

//3
func sumTwoInt2(num1 a: Int, num2 b: Int){
    print("Результат операции - \(a+b)")
}
sumTwoInt2(num1: 10, num2: 12)

//4
func sumTwoInt3(_ a: Int, _ b: Int){
    print("Результат операции - \(a+b)")
}
sumTwoInt3(10, 12)

//5
func sumTwoInt4(_ a: Int, _ b: Int) -> Int{
    let result = a + b
    print("Результат операции - \(result)")
    return result
}
var result = sumTwoInt4(10, 12) //22

//6
func returnMessage(code: Int, message: String) -> String {
    var mutableMessage = message
    mutableMessage += String(code)
    return mutableMessage
}

returnMessage(code: 200, message: "Код сообщения - ")

//11
func returnMessage2(code: Int, message: String = "Код - ") -> String {
    var mutableMessage = message
    mutableMessage += String(code)
    return mutableMessage
}
returnMessage2(code: 300) //"Код - 300"

//12
func printErrorMessage(){
    print("Произошла ошибка")
}

//13
// функция вывода текста на консоль
func printText() {
    print("Функция вызвана")
}
// функция, которая возвращает функцию
func returnPrintTextFunction() -> () -> () {
        return printText
}
print("1")
let newFunctionInLet = returnPrintTextFunction()
type(of: newFunctionInLet) //(() -> ()).Type
print("2")
newFunctionInLet()
print("3")

//14
import Foundation
// функция генерации случайного массива банкнот
func generateWallet(walletLength: Int) -> [Int] {
        // существующие типы банкнот
        let typesOfBanknotes = [50, 100, 500, 1000, 5000]
        // массив банкнот
        var wallet: [Int] = []
        // цикл генерации массива случайных банкнот
        for _ in 1...walletLength {
            let randomIndex = Int( arc4random_uniform( UInt32( typesOfBanknotes.count-1 ) ) )
            wallet.append( typesOfBanknotes[randomIndex] )
        }
        return wallet
}
// функция подсчета денег в кошельке
func sumWallet(banknotsFunction wallet: (Int)->[Int], walletLength: Int )
    -> Int? {
        // вызов переданной функции
        let myWalletArray = wallet( walletLength )
        var sum: Int = 0
        for oneBanknote in myWalletArray {
            sum += oneBanknote
        }
        return sum
}
// передача функции в функцию
sumWallet(banknotsFunction: generateWallet, walletLength: 20) // 6900





//2
func printCodeMessage(requestCode: Int) -> () {
    print("Код ответа — \(requestCode)")
}
// вызываем функцию
printCodeMessage(requestCode: 200)
printCodeMessage(requestCode: 404)


//3
//func sum(a:Int, b: Int, c:Int) -> () {
//    print("Сумма  — \(a+b+c)")
//}
//sum(a: 10, b: 51, c: 92)

//4
func sum(a:Int, _ b: Int, c:Int) -> () {
    print("Сумма  — \(a+b+c)")
}
sum(a: 15, 12, c: 9)

//4a
func sumOfThreeInt(a:Int, b: Int, c: Int) -> Int {
    return a+b+c
}
var sumResult = sumOfThreeInt(a: 10, b: 25, c: 31) //66

func changeValues(_  a: inout Int,  _ b: inout Int) -> () {
    let tmp = a
    a = b
    b = tmp
}
var a = 150, b = 45
changeValues(&a, &b)
a //45
b //150

func generateString(code: Int, message: String) -> String {
    let returnMessage = "Получено сообщение \(message) с кодом \(code)"
    return returnMessage
}
// используем функцию в качестве значения
print(generateString(code: 200, message: "Сервер доступен"))

func printRequestString(codes: Int...) -> () {
    var codesString = ""
    for oneCode in codes {
        codesString += String(oneCode) + " "
    }
    print("Получены ответы  — \(codesString)")
}
printRequestString(codes: 600, 800, 301)
printRequestString(codes: 101, 200)


//
func getCodeDescription(code: Int)
    -> (code: Int, description: String){
        let description: String
        switch code {
        case 1...100:
            description = "Error"
        case 101...200:
            description = "Correct"
        default:
            description = "Unknown"
        }
        return (code, description)
}
let request = getCodeDescription(code: 45)
request.description //"Error"
request.code //45





//*



//

func oneStep( coordinates: inout (Int, Int), stepType: String ) {
    func up( coords: inout (Int, Int)) {
        coords = (coords.0+1, coords.1)
    }
    func right( coords: inout (Int, Int)) {
        coords = (coords.0, coords.1+1)
    }
    func down( coords: inout (Int, Int)) {
        coords = (coords.0-1, coords.1)
    }
    func left( coords: inout (Int, Int)) {
        coords = (coords.0, coords.1-1)
    }
    
    switch stepType {
    case "up":
        up(coords: &coordinates)
    case "right":
        right(coords: &coordinates)
    case "down":
        down(coords: &coordinates)
    case "left":
        left(coords: &coordinates)
    default:
        break;
    }
}
var coordinates = (10, -5)
oneStep(coordinates: &coordinates, stepType: "up")
oneStep(coordinates: &coordinates, stepType: "right")
coordinates //(.0 11, .1 -4)


func say(what: String){}
func say(what: Int){}


func cry() -> String {
    return "one"
}
func cry() -> Int {
    return 1
}

let resultString: String = cry()
var resultInt = cry() + 100


//
func countdown(firstNum num: Int) {
    print(num)
    if num > 0 {
        // рекурсивный вызов функции
        countdown(firstNum:num-1)
    }
}
countdown(firstNum: 20)

//22
let functionInLet = {return true}
functionInLet() //true

