//: [Previous](@previous)

import Foundation

// 8
class Residence {
    var rooms:[Room]?
    func roomsCount() -> Int {
        if let rooms = self.rooms {
            return rooms.count
        }else{
            return 1
        }
    }
}

// ------ Не вставлять
class Person {
    var residence: Residence?
}

struct Room {
    let square: Int
}

//создаем объект комната
let room = Room(square: 10)
//создаем объект место проживания
var residence = Residence()
//добавляем в него комнату
residence.rooms = [room]
//создаем объект Персона
var man = Person()
//добавляем в него резиденцию
man.residence = residence

let room1 = Room(square: 15)
let room2 = Room(square: 25)
man.residence?.rooms = [room1, room2]
// ------

//9
man.residence?.roomsCount()

//10
let firstRoom = man.residence?.rooms?[0]
type(of:firstRoom) // Room?

//11
man.residence?.rooms?[0] = Room(square: 35)
man.residence?.rooms?[0].square // 35
