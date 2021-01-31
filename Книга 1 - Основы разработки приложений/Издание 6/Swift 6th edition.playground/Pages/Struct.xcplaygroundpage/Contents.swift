//: [Previous](@previous)

import Foundation

//1
var playerInChess = (name: "Василий", wins: 10)

//2
//заменить PlayerInChess1 на PlayerInChess
struct PlayerInChess1 {}
var oleg = PlayerInChess1()
type(of:oleg) //PlayerInChess.Type

//3
//заменить PlayerInChess2 на PlayerInChess
struct PlayerInChess2 {
    var name: String
    var wins: UInt
}

//4
var harry = PlayerInChess2.init(name: "Гарри", wins: 32)

//5
//заменить PlayerInChess3 на PlayerInChess
struct PlayerInChess3 {
    var name: String = "Игрок"
    var wins: UInt = 0
}
var john = PlayerInChess3(name: "Джон", wins: 32)
var player = PlayerInChess3()

//6
john.name // "Джон"
player.name // "Игрок"

//7
john.wins // 32
john.wins += 1
john.wins // 33

//8
struct PlayerInChess {
    var name: String = "Игрок"
    var wins: UInt = 0
    //инициализатор
    init(name: String){
        self.name = name
    }
    //метод из листинга 9
    func description(){
        print("Игрок \(name) имеет \(wins) побед")
    }
    //метод из листинга 10
    mutating func win( count: UInt = 1 ){
        wins += count
    }
}
var helga = PlayerInChess(name: "Ольга")
helga.wins // 0
// СЛЕДУЮЩИЙ КОД ВЫЗОВЕТ ОШИБКУ
// var newPlayer = PlayerInChess()

//9
//... структура из листинга 8
var andrey = PlayerInChess(name: "Андрей")
andrey.description()

//10
//... структура из листинга 8
var harold = PlayerInChess(name: "Гарольд")
harold.wins // 0
harold.win()
harold.wins // 1
harold.win( count: 3 )
harold.wins // 4


