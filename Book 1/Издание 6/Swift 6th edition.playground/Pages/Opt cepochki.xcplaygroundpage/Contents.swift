//: [Previous](@previous)

import Foundation

//1
class Person {
    // резиденция данной персоны
    var residence: Residence?
}

class Residence {
    // количество комнат в резиденции
    var rooms = 1
}


//2
var man = Person()
man.residence // nil

//3
man.residence = Residence()
man.residence = nil

//4
if let manResidence = man.residence {
    // действия с manResidence
}

