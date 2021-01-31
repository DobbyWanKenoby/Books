//: [Previous](@previous)

import Foundation

// 6
// ----- Не вставлять
class House {
    var title: String
    var owner: Human?
    init(title: String, owner: Human? = nil) {
        print("Дом \(title) создан")
            self.title = title
            self.owner = owner
        return
    }
    deinit{
        print("Дом \(title) уничтожен")
    }
}
// -----

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

// 7

// создаем область видимости
if true { // шаг 1
    let houseOwner = Human(name:"Василий")
    if true { // шаг 2
        let house = House(title:"Частный дом", owner: houseOwner)
        houseOwner.add(house: house)
    } // шаг 3
    // шаг 4
    let secondHouse = House(title: "Квартира", owner: houseOwner)
    houseOwner.add(house: secondHouse)
} // шаг 5

