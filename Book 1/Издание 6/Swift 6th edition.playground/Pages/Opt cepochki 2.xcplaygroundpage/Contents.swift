//: [Previous](@previous)

import Foundation

// 5
class Person {
    var residence: Residence?
}

class Residence {
    // перечень комнат в резиденции
    var rooms:[Room]?
}

struct Room {
    // площадь комнаты
    let square: Int
}

var man = Person()

// для доступа к значению типа Room
// необходимо выполнить два опциональных связывания
if let residence = man.residence {
    if let rooms = residence.rooms {
        // действия с коллекцией типа [Room]
    }
}

