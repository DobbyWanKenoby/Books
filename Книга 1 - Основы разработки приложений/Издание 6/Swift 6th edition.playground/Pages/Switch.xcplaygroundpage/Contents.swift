import Foundation

/* переменная типа Int
 содержит оценку, полученную
 пользователем */
var userMark = 3
/* используем конструкцию if-else
 для определения значения
 переменной userMark и вывода
 необходимого текста */
if userMark == 1 {
    print("Единица на экзамене! Это ужасно!")
} else if userMark == 2 {
    print("С двойкой ты останешься на второй год!")
} else if userMark == 3 {
    print("Ты плохо учил материал в этом году!")
} else if userMark == 4 {
    print("Неплохо, но могло быть и лучше")
} else if userMark == 5 {
    print("Бесплатное место в университете тебе обеспечено!")
}

switch userMark {
case 1,2:
    print("экзамен не сдан")
case 3:
    print("необходимо выполнить дополнительное задание")
case 4,5:
    print("экзамен сдан")
default:
    print("указана некорректная оценка")
}

switch userMark {
case 1..<3:
    print("Экзамен не сдан!")
case 3:
    print("Требуется решение дополнительного задания")
case 4...5:
    print("Экзамен сдан!")
default:
    assert( false, "Указана некорректная оценка")
}

//17
userMark = 4
var message = ""
switch userMark {
case 1:
    message = "Единица на экзамене! Это ужасно!"
case 2:
    message = "С двойкой ты останешься на второй год!"
case 3:
    message = "Ты плохо учил материал в этом году!"
case 4:
    message = "Неплохо, но могло быть и лучше"
case 5:
    message = "Бесплатное место в университете тебе обеспечено!"
default:
    message = "Переданы некорректные данные об оценке"
}
print(message)

var answer: (code: Int, message: String) = (code: 104, message: "Page not found")

switch answer {
case (100..<400, _):
    print( answer.message )
case (400..<500, _):
    assert( false, answer.message )
default:
    print( "Получен некорректный ответ" )
}

//21
var dragonCharacteristics: (color: String, weight: Float) = ("красный", 3)

switch dragonCharacteristics {
    case ("зеленый", 0..<2 ):
        print("Вальер № 1")
    case ("красный", 0..<2 ):
        print("Вальер № 2")
    case ("зеленый", 2...), ("красный", 2...):
        print("Вальер № 3")
    default:
        print("Дракон не может быть принят в стаю")
}


//22
var dragonsCount = 3
switch dragonCharacteristics {
case ("зеленый", 0..<2 ):
    print("Вальер № 1")
case ("красный", 0..<2 ):
    print("Вальер № 2")
case ("зеленый", 2...) where dragonsCount < 5,
     ("красный", 2...) where dragonsCount < 5:
    print("Вальер № 3")
default:
    print("Дракон не может быть принят в стаю")
}

//23
switch dragonCharacteristics {
case ("зеленый", 0..<2 ):
    print("Вальер № 1")
case ("красный", 0..<2 ):
    print("Вальер № 2")
case ("зеленый", 2...) where
        (dragonCharacteristics.weight.truncatingRemainder(dividingBy: 1) ) == 0
        && dragonsCount < 5,
     ("красный", 2...) where
        (dragonCharacteristics.weight.truncatingRemainder(dividingBy: 1) ) == 0
        && dragonsCount < 5:
    print("Вальер № 3")
default:
    print("Дракон не может быть принят в стаю")
}

//24

switch dragonCharacteristics {
case ("зеленый", 0..<2 ):
    print("Вальер № 1")
case ("красный", 0..<2 ):
    print("Вальер № 2")
case ("зеленый", let weight) where
        weight > 2
        && dragonsCount < 5,
     ("красный", let weight) where
        weight > 2
        && dragonsCount < 5:
    print("Вальер № 3")
default:
    print("Дракон не может быть принят в стаю")
}

//25
switch dragonCharacteristics {
case ("зеленый", 0..<2 ):
    print("Вальер № 1")
case ("красный", 0..<2 ):
    print("Вальер № 2")
case ("зеленый", let weight) where
        weight > 2
        && weight.truncatingRemainder(dividingBy: 1) == 0
        && dragonsCount < 5,
     ("красный", let weight) where
        weight > 2
        && weight.truncatingRemainder(dividingBy: 1) == 0
        && dragonsCount < 5:
    print("Вальер № 3. Его вес \(weight) тонны")
default:
    print("Дракон не может быть принят в стаю")
}

//25a
switch dragonCharacteristics {
case ("зеленый", 0..<2 ):
    print("Вальер № 1")
case ("красный", 0..<2 ):
    print("Вальер № 2")
case let (color, weight) where
    (color == "зеленый" || color == "красный")
    && weight.truncatingRemainder(dividingBy: 1) == 0
    && dragonsCount < 5:
        print("Вальер № 3. Его вес \(weight) тонны")
default:
    print("Дракон не может быть принят в стаю")
}

//26
var someInt = 12
switch someInt {
case 1...:
    print( "Больше 0" )
case ..<0:
    print( "Меньше 0" )
default:
    break
}

//27
var level: Character = "Б"
// определение уровня готовности
switch level {
case "А":
    print("Выключить все электрические приборы ")
    fallthrough
case "Б":
    print("Закрыть входные двери и окна ")
    fallthrough
case "В":
    print("Соблюдать спокойствие")
default:
    break
}
