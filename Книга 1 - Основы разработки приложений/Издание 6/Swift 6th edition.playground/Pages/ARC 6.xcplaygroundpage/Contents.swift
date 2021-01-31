//: [Previous](@previous)

import Foundation

// 9

// ----- Не вставлять
class Human {
    var name: String
    var houses: [House] = []
 
    init(name: String) {
        print("Владелец \(name) создан")
        self.name = name
        return
    }
 
    func add(house: House) {
        self.houses.append(house)
    }
 
    deinit{
        print("Владелец \(name) уничтожен")
    }
}
// -----

class House {
    var title: String
    unowned var owner: Human
    init(title: String, owner: Human) {
        print("Дом \(title) создан")
        self.title = title
        self.owner = owner
        return
    }
    deinit{
        print("Дом \(title) уничтожен")
    }
}

//10

var a = 2
let f = { print(a) }
f()
a = 3
f()

// 11
class Man{
    var name = "Человек"
    deinit{
        print("Объект удален")
    }
}

var closure : (() -> ())?

if true{
    let man = Man()
    closure = {
        print(man.name)
    }
    closure!()
}
print("Программа завершена")

// 12
if true{
    let man = Man()
    closure = { [unowned man] in
        print(man.name)
    }
    closure!()
}
print("Программа завершена")


// 13

//var closureWithSomeArgs = { [unowned human, weak house] in
//    // тело замыкания
//}

