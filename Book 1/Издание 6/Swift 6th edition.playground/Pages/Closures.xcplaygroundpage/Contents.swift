import Foundation

// электронный кошелек
var wallet = [10,50,100,100,5000,100,50,50,500,100]

// функция отбора купюр
func handle100(wallet: [Int]) -> [Int] {
    var returnWallet = [Int]()
    for banknot in wallet {
        if banknot==100{
            returnWallet.append(banknot)
        }
    }
    return returnWallet
}

handle100(wallet: wallet)

func handleMore1000(wallet: [Int]) -> [Int] {
    var returnWallet = [Int]()
    for banknot in wallet {
        if banknot>=1000{
            returnWallet.append(banknot)
        }
    }
    return returnWallet
}

handleMore1000(wallet: wallet)

// единая функция формирования результирующего массива
func handle(wallet: [Int], closure: (Int) -> Bool) -> [Int] {
    var returnWallet = [Int]()
    for banknot2 in wallet {
        if closure(banknot2) {
            returnWallet.append(banknot2)
        }
    }
    return returnWallet
}
// функция сравнения с числом 100
func compare100(banknot: Int) ->Bool {
    return banknot==100
}
// функция сравнения с числом 1000
func compareMore1000(banknot:Int) -> Bool {
    return banknot>=1000
}
//var wallet = [10,50,100,100,5000,100,50,50,500,100]
handle(wallet: wallet, closure: compare100)
handle(wallet: wallet, closure: compareMore1000)

// отбор купюр достоинством выше 1000 рублей
handle(wallet: wallet, closure: {(banknot: Int) -> Bool in
    return banknot>=1000
})
// отбор купюр достоинством 100 рублей
handle(wallet: wallet, closure: {banknot in
    return banknot==100
})

// отбор купюр достоинством выше 1000 рублей
handle(wallet: wallet,
       closure: {banknot in banknot>=1000})
// отбор купюр достоинством 100 рублей
handle(wallet: wallet,
       closure: {banknot in banknot==100})

//7
// отбор купюр достоинством выше 1000 рублей
handle(wallet: wallet,
       closure: {$0>=1000})
// отбор купюр достоинством 100 рублей
handle(wallet: wallet,
       closure: {$0==100})

// отбор купюр достоинством выше 1000 рублей
handle(wallet: wallet)
{$0>=1000}
// отбор купюр достоинством 100 рублей
handle(wallet: wallet)
{$0==100}

//9
handle(wallet: wallet)
{banknot in
    for number in Array(arrayLiteral: 100,500) {
        if number == banknot {
            return true
        }
    }
    return false
}

var successBanknots = handle(wallet: wallet)
    { Array(arrayLiteral: 100,500).contains($0) }
successBanknots //[100, 100, 100, 500, 100]

// 10
func networkQuery(url: String, success: (String) -> (), error: (Int) -> ()) {
    // код запроса на сервер
}

//10

// классический вариант
networkQuery(url: "https://weather.com", success: { data in }, error: {errorCode in })

// новый вариант
networkQuery(url: "https://weather.com") { data in
    // ...
} error: { errorCode in
    // ...
}



//10
let closure: () -> () = {
    print("Замыкающее выражение")
}
closure()

//11
// Передача в функцию стркоового значения
var closurePrint: (String) -> () = {text in
    print(text)
}
closurePrint("Text")
// Передача в функцию целочисленных значений
// с осуществлением доступа через краткий синтаксис $0 и $1
var sum: (_ numOne: Int, _ numTwo: Int) -> Int = {
    return $0 + $1
}
sum(10, 34) //44

//12
var array = [1,44,81,4,277,50,101,51,8]
array.sorted(by: { (first: Int, second: Int) -> Bool in
    return first < second
})

//13
//var array = [1,44,81,4,277,50,101,51,8]
var sortedArray = array.sorted(by: {$0<$1})
sortedArray //[1, 4, 8, 44, 50, 51, 81, 101, 277]

//14
sortedArray = array.sorted(by: <)
sortedArray //[1, 4, 8, 44, 50, 51, 81, 101, 277]

//15
func sum(x: Int, y: Int) -> Int {
    return x + y
}
sum(x: 1,y: 4) // 5

//16
func sum2(_ x: Int) -> (Int) -> Int {
    return {  return $0+x }
}
var anotherClosure = sum2(1)
anotherClosure(12) // 13

//17
sum2(5)(12) // 17

//18
var sumClosure = sum2(1)
sumClosure(12) // 13
sumClosure(19) // 20

//19



//20
var a = 1
var b = 2
let closureSum : () -> Int = {
    [a,b] in
    return a+b
}
closureSum() // 3
a = 3
b = 4
closureSum() // 3

//21
func makeIncrement(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func increment() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return increment
}

//22
var incrementByTen = makeIncrement(forIncrement: 10)
var incrementBySeven = makeIncrement(forIncrement: 7)
incrementByTen()   // 10
incrementByTen()   // 20
incrementByTen()   // 30
incrementBySeven() // 7
incrementBySeven() // 14
incrementBySeven() // 21

//23
var incrementByFive = makeIncrement(forIncrement: 5)
var copyIncrementByFive = incrementByFive

//24
incrementByFive() // 5
copyIncrementByFive() // 10
incrementByFive() // 15

//26
var arrayOfNames = ["Helga", "Bazil", "Alex"]
//func printName(nextName: ()->String) {
    // какой-либо код
//    print(nextName())
//}
//printName(nextName: {arrayOfNames.remove(at: 0)})

//27
func printName(nextName: @autoclosure ()->String) {
    // какой-либо код
    print(nextName())
}
printName(nextName: arrayOfNames.remove(at: 0))

//28
var arrayOfClosures: [()->Int] = []

//29
//func addNewClosureInArray(_ newClosure: ()->Int){
//    arrayOfClosures.append(newClosure) // ошибка
//}

//30
func addNewClosureInArray(_ newClosure: @escaping ()->Int){
    arrayOfClosures.append(newClosure)
}
addNewClosureInArray({return 100})
addNewClosureInArray{return 1000}
arrayOfClosures[0]() // 100
arrayOfClosures[1]() // 1000


