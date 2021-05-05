//
//  Card.swift
//  Cards
//
//  Created by Vasily Usov on 19.04.2021.
//

import UIKit

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


