import Foundation

// 1

var currentLevel = 1
let finalLevel = 5

// с использование while
while currentLevel <= finalLevel {
    // начало нового уровня
    // тут может находится код, обеспечивающий прохождение уровня
    currentLevel += 1
}
// игра окончена

// с использование repeat-while
currentLevel = 1
repeat {
    // начало нового уровня
    // тут может находится код, обеспечивающий прохождение уровня
    currentLevel += 1
} while currentLevel <= finalLevel
// игра окончена

//2

for element in 1...10 {
    // при каждой новой иттерации
    // element содержит очередной элемент из диапазона 1...10
}

for char in "Строка" {
    // при каждой новой иттерации
    // char содержит очередной символ строки
}

// 3

for _ in 1...10 {
    // ...
}



// --

struct Shape{
    var sides: Int?
}

// 1

func shapeAnalizator(shape: Shape) {
    // вариант с использованием if
    if let sides = shape.sides, sides > 2 {
       // sides доступна
    }
    // sides не доступна
    
    // вариант с использованием switch
    guard let sides = shape.sides, sides > 2 else {
        return
    }
    // sides доступна
}

//2

func getTitleBy(id idIntDataBase: UInt) -> String? {
    // проверим существование записи по данному id
    guard let dataBase.getRowBy(id: idIntDataBase) else {
        return nil
    }
    // ...
}
