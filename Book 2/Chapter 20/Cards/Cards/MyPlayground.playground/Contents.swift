import UIKit

var str = "Hello, playground"

// Типы карт
enum CardType: CaseIterable {
    case circle
    case cross
    case square
    case fill
}

// Цвета карт
enum CardColor: CaseIterable  {
    case red
    case green
    case black
    case gray
    case brown
    case yellow
    case purple
    case orange
}

// Игральная карточка
typealias Card = (type: CardType, color: CardColor)

CardType.cross == CardType.circle

// обход элементов перечисления
for enumElement in CardType.allCases {
    // ...
}

// получение случайного элемент перечисления
let randomEnumelement = CardColor.allCases.randomElement()!
