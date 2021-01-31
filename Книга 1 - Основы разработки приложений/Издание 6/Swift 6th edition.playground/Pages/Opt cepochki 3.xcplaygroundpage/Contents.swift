//: [Previous](@previous)

import Foundation

// ------ Не вставлять
class Person {
    var residence: Residence?
}

class Residence {
    var rooms:[Room]?
}

struct Room {
    let square: Int
}
// ------


//6
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
// получаем доступ к комнатам с помощью опциональной цепочки
if let rooms = man.residence?.rooms {
    // действия с коллекцией типа [Room]
}

//7
let room1 = Room(square: 15)
let room2 = Room(square: 25)
man.residence?.rooms = [room1, room2]

