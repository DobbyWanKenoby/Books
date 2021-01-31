import Foundation

//1
var russianCurrency: String = "Rouble"

//2
var currencyUnit: [String] = ["Rouble", "Dollar", "Euro"]
var americanCurrency = currencyUnit[1]

//3
enum CurrencyUnit {
    case rouble
    case dollar
    case euro
}

//4
//enum CurrencyUnit {
//    case rouble, dollar, euro
//}

//5
var roubleCurrency: CurrencyUnit = .rouble
var otherCurrency = CurrencyUnit.dollar
// сменим значение одного параметра
otherCurrency = .euro

//6
enum AdvancedCurrencyUnit {
    // вложенное перечисление из листинга 9
    enum DollarCountries {
        case usa
        case canada
        case australia
    }
    case rouble(сountries: [String], shortName: String)
    case euro(сountries: [String], shortName: String)
    // дополнительный член из листинга 8
    case dollar(nation: DollarCountries, shortName: String)
}

//7
var euroCurrency: AdvancedCurrencyUnit =  .euro(сountries: ["German", "France"], shortName: "EUR")

//8
// страны, использующие доллар
//enum DollarCountries {
//    case usa
//    case canada
//    case australia
//}
//..тут перчисление AdvancedCurrencyUnit c новым членом
var dollarCurrency: AdvancedCurrencyUnit = .dollar( nation: .usa, shortName: "USD" )

//9
//см листинг 6

//10
var australia: AdvancedCurrencyUnit.DollarCountries = .australia

//11
switch dollarCurrency {
    case .rouble:
        print("Рубль")
    case let .euro(countries, shortname):
        print("Евро. Страны: \(countries). Краткое наименование: \(shortname)")
    case .dollar(let nation, let shortname):
        print("Доллар \(nation). Краткое наименование: \(shortname) ")
}
//Консоль
//Доллар usa. Краткое наименование: USD

//12
enum Smile: String {
    case joy = ":)"
    case laugh = ":D"
    case sorrow = ":("
    case surprise = "o_O"
    // вычисляемое свойство из листинга 16
    var description: String {return self.rawValue}
    // метод из листинга 17
    func about(){
        print("Перечисление содержит список  смайликов")
    }
    //методы из листинга 18
    func descriptionValue() -> Smile{
        return self
    }
    func descriptionRawValue() -> String{
        return rawValue
    }
}

//13
enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune, pluton = 999
}

//14
var iAmHappy = Smile.joy
iAmHappy.rawValue // ":)"


//15
var myPlanet = Planet.init(rawValue: 3) // earth
var anotherPlanet = Planet.init(rawValue: 11) // nil

//16
//... доработанное перечисление Smile из листинга 12
var mySmile: Smile = .sorrow
mySmile.description // ":("

//17
//... доработанное перечисление Smile из листинга 12
var otherSmile = Smile.joy
otherSmile.about()

//18
//... доработанное перечисление Smile из листинга 12
otherSmile.descriptionValue() // joy
otherSmile.descriptionRawValue() // ":)"

//19
enum ArithmeticExpression{
    // операция сложения
    case addition(Int, Int)
    // операция вычитания
    case substraction(Int, Int)
    // метод из листинга 20
    func evaluate() -> Int {
        switch self{
        case .addition(let left, let right):
            return left+right
        case .substraction(let left, let right):
            return left-right
        }
    }
}
var expr = ArithmeticExpression.addition(10, 14)

//20
//... доработанное перечисление из листинга 19
//var expr = ArithmeticExpression.addition(10, 14)
expr.evaluate() // 24

//21
// ArithmeticExpression2 нужно заменить на ArithmeticExpression
enum ArithmeticExpression2 {
    case number( Int )
    indirect case addition( ArithmeticExpression2, ArithmeticExpression2 )
    indirect case subtraction( ArithmeticExpression2, ArithmeticExpression2 )
    func evaluate( _ expression: ArithmeticExpression2? = nil ) -> Int{
        switch expression ?? self {
        case let .number( value ):
            return value
        case let .addition( valueLeft, valueRight ):
            return evaluate( valueLeft ) + evaluate( valueRight )
        case .subtraction( let valueLeft, let valueRight ):
            return evaluate( valueLeft )-evaluate( valueRight )
        }
    }
}
var hardExpr = ArithmeticExpression2.addition( .number(20), .subtraction( .number(10), .number(34) ) )
hardExpr.evaluate() // -4



