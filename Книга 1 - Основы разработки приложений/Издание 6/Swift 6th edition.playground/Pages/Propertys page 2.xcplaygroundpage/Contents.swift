//: [Previous](@previous)

import Foundation
//3 и 4
class AboutMan{
    var firstName = "Имя"
    var secondName = "Фамилия"
    lazy var wholeName: ()->String = { "\(self.firstName) \(self.secondName)"}
    var wholeName2: String { return "\(self.firstName) \(self.secondName)" }
    init(name: String, secondName: String){
        ( self.firstName, self.secondName ) = ( name, secondName )
    }
}

var otherMan = AboutMan(name: "Алексей", secondName:"Олейник")
otherMan.wholeName() // "Алексей Олейник"
otherMan.wholeName2 // "Алексей Олейник"
otherMan.secondName = "Дуров"
otherMan.wholeName() // "Алексей Дуров"
otherMan.wholeName2 // "Алексей Дуров"

//5
struct Circle{
    var coordinates: (x: Int, y: Int)
    var radius: Float
    var perimeter: Float {
        get{
            return 2.0 * 3.14 * radius
        }
        set(newPerimeter){
            radius = newPerimeter / (2*3.14)
        }
    }
}
var myNewCircle = Circle(coordinates: (0,0), radius: 10)
myNewCircle.perimeter // выводит 62.8
myNewCircle.perimeter = 31.4
myNewCircle.radius // выводит 5


//6
//Circle2 заменить на Circle
//myNewCircle2 заменить на myNewCircle
struct Circle2{
    var coordinates: (x: Int, y: Int)
    //var radius: Float
    // свойство для листинга 7
    var radius: Float {
        willSet (newValueOfRadius) {
            print("Вместо значения \(radius) устанавливается значение \(newValueOfRadius)")
        }
        didSet (oldValueOfRadius) {
            print("Вместо значения \(oldValueOfRadius) установлено значение \(radius)")
        }
    }
    var perimeter: Float {
        get{
            return 2.0 * 3.14 * radius
        }
        set{
            radius = newValue / (2*3.14)
        }
    }
}

var myNewCircle2 = Circle2(coordinates: (0,0), radius: 10)
myNewCircle2.perimeter // выводит 62.8
myNewCircle2.perimeter = 31.4
myNewCircle2.radius // выводит 5

//7
// доработанная структура из листинга 6

//8
struct AudioChannel {
    static var maxVolume = 5
    var volume: Int {
        didSet {
            if volume > AudioChannel.maxVolume {
                volume = AudioChannel.maxVolume
            }
        }
    }
}
var LeftChannel = AudioChannel(volume: 2)
var RightChannel = AudioChannel(volume: 3)
RightChannel.volume = 6
RightChannel.volume // 5
AudioChannel.maxVolume // 5
AudioChannel.maxVolume = 10
AudioChannel.maxVolume // 10
RightChannel.volume = 8
RightChannel.volume // 8

