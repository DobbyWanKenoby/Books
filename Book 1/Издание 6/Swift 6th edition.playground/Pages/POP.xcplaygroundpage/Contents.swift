//: [Previous](@previous)

import Foundation

// 1

class TVShow {
    // ...
}

protocol DisplayShow {
    func getShowsList() -> [TVShow]
    func changeShowTo(show: TVShow) -> Void
    var currentShow: TVShow { get }
    // дополнительные требования ...
}

protocol ChangeVolume {
    var currentVolume: UInt8 { get set }
    func increase(by: UInt8) -> Void
    func descrease(by: UInt8) -> Void
    // дополнительные требования...
}

//struct TV: DisplayShow, ChangeVolume {
//    // реализация методов и свойств протоколов ...
//}

//2
//struct DVDPlayer: ChangeVolume {
//    // реализация методов и свойств протоколов ...
//}

//3
struct Manager {
    var currentDevice: ChangeVolume
    func increaseVolume(by: UInt8) -> Void {
        self.currentDevice.increase(by: by)
    }
    // ...
}

//let universalManager = Manager(currentDevice: DVDPlayer())
//universalManager.increaseVolume(by: 1)

//4
protocol Walking {}
protocol Flying {}
protocol Swiming{}
struct Duck: Walking, Flying, Swiming {}

//5
struct Pinguin: Walking, Swiming {}

//6
class UserClass {
    var name: String
    init(name: String){
        self.name = name
    }
}

struct UserStruct {
    var name: String
}

//7
var userByClass = UserClass(name: "Vasiliy")
var userByStruct = UserStruct(name: "Vasiliy")

//8
var newUserByClass = userByClass
var newUserByStruct = userByStruct

//9
import Foundation

class ValueClass {
    var value: Int = 0
}

struct ValueStruct {
    var value: Int = 0
}

var operationArray = Array(1...100_000_000)

// опыт с классом
var startTime = Date().timeIntervalSince1970
var a = ValueClass()

for _ in operationArray {
    a.value += 1
}

var finishTime = Date().timeIntervalSince1970
print("Время выполнения операций с классом - \(finishTime-startTime)")

// опыт со структурой
startTime = Date().timeIntervalSince1970
var b = ValueStruct()

for _ in operationArray {
    b.value += 1
}

finishTime = Date().timeIntervalSince1970
print("Время выполнения операций со структурой - \(finishTime-startTime)")

//10

struct User{
    var id: Int
}

//class UserController {
//    var users: [User]
//    func add(user: User){
//        // ...
//    }
//    func removeBy(userID: Int) {
//        // ...
//    }
//    func loadFromStorageBy(userID: Int) -> User{
//        // ...
//    }
//    init(user: User) {
//        // ...
//    }
//}

