//: [Previous](@previous)

import Foundation

//1
//...Chessman2 заменить на Chessman
class Chessman2 {
    // тип фигуры
    let type: String
    // цвет фигуры
    let color: String
    //координаты фигуры
    var coordinates: (String, Int)? = nil
    // символ, соответствующий фигуре
    let figureSymbol: Character
    // инициализатор
    init(type: String, color: String, figure: Character){
        self.type = type
        self.color = color
        figureSymbol = figure
    }
}
// создаем экземпляр фигуры
var kingWhite2 = Chessman2(type: "king", color: "white", figure: "\u{2654}")

//2
// тип шахматной фиугры
enum ChessmanType {
    case king, castle, bishop, pawn, knight, queen
}
// цвета фигур
enum ChessmanColor {
    case black, white
}

//2a
class Chessman {
    let type: ChessmanType
    let color: ChessmanColor
    var coordinates: (String, Int)? = nil
    let figureSymbol: Character
    init(type: ChessmanType, color: ChessmanColor, figure:Character){
        self.type = type
        self.color = color
        figureSymbol = figure
    }
    //инициализатор из листинга 4
    init(type: ChessmanType, color: ChessmanColor, figure: Character, coordinates: (String, Int)){
        self.type = type
        self.color = color
        figureSymbol = figure
        setCoordinates(char: coordinates.0, num: coordinates.1)
    }
    // методы из листинга 3
    // метод установки координат
    func setCoordinates(char c:String, num n: Int){
        coordinates = (c, n)
    }
    // метод, убивающий фигуру
    func kill(){
        coordinates = nil
    }
}
var kingWhite = Chessman(type: .king, color: .white, figure: "\u{2654}")

//3
//... дополненный класс из листинга 3
//... создание экземпляра фигуры из kingWhite
kingWhite.setCoordinates(char: "E", num: 1)

//4
//... дополненный класс из листинга 3
var queenBlack = Chessman(type: .queen, color: .black, figure: "\u{2655}", coordinates: ("A", 6))

