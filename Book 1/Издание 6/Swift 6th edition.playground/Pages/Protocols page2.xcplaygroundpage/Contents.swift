//: [Previous](@previous)

import Foundation

//15
protocol Named {
    var name: String { get }
}

protocol Aged {
    var age: Int { get }
}

struct Person: Named, Aged {
    var name: String
    var age: Int
}

func wishHappyBirthday(celebrator: Named & Aged) {
    print("С Днем рождения, \(celebrator.name)! Тебе уже \(celebrator.age)!")
}

let birthdayPerson = Person(name: "Джон Уик", age: 46)
wishHappyBirthday(celebrator: birthdayPerson)
// выводит "С Днем рождения, Джон Уик! Тебе уже 46!"

