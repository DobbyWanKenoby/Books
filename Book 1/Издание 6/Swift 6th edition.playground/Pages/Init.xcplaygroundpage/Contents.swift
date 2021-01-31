//: [Previous](@previous)

import Foundation

//1 на странице Nasledovanie

//2
class Rectangle{
    var height: Int
    var weight: Int
    init?(height h: Int, weight w: Int){
        self.height = h
        self.weight = w
        if !(h > 0 && w > 0) {
            return nil
        }
    }
}
var rectangle = Rectangle(height: 56, weight: -32) // возвращает nil

//3
enum TemperatureUnit {
    case Kelvin, Celsius, Fahrenheit
    init?(symbol: Character) {
        switch symbol {
        case "K":
            self = .Kelvin
        case "C":
            self = .Celsius
        case "F":
            self = .Fahrenheit
        default:
            return nil
        }
    }
}
let fahrenheitUnit = TemperatureUnit(symbol: "F")

//4
//TemperatureUnit2 заменить на TemperatureUnit
//fahrenheitUnit2 заменить на fahrenheitUnit
enum TemperatureUnit2: Character {
    case Kelvin = "K", Celsius = "C", Fahrenheit = "F"
}
let fahrenheitUnit2 = TemperatureUnit2(rawValue: "F")
fahrenheitUnit2!.hashValue

//5
class SuperClass {
    init?(isNil: Bool){
        if isNil == true {
            return nil
        }else{
            print("Экземпляр создан")
        }
    }
    deinit {
        print("Деинициализатор суперкласса")
    }
}
class SubClass:SuperClass{
    deinit {
        print("Деинициализатор подкласса")
    }
}

var obj = SubClass(isNil: false)
obj = nil

