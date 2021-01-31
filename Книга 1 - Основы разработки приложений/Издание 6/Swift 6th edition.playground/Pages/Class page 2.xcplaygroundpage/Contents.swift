//: [Previous](@previous)

import Foundation

//5
class Chessman {
    enum ChessmanType {
        case king, castle, bishop, pawn, knight, queen
    }
    enum ChessmanColor {
        case black, white
    }
    let type: ChessmanType
    let color: ChessmanColor
    var coordinates: (String, Int)? = nil
    let figureSymbol: Character
    init(type: ChessmanType, color: ChessmanColor, figure:
        Character){
        self.type = type
        self.color = color
        figureSymbol = figure
    }
    init(type: ChessmanType, color: ChessmanColor, figure:
        Character, coordinates: (String, Int)){
        self.type = type
        self.color = color
        figureSymbol = figure
        setCoordinates(char: coordinates.0, num:coordinates.1)
    }
    func setCoordinates(char c:String, num n: Int){
        coordinates = (c, n)
    }
    func kill(){
        coordinates = nil
    }
}

//6
var linkToEnumType = Chessman.ChessmanType.bishop
