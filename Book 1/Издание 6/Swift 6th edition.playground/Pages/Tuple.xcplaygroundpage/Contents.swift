import UIKit
//6.2
var tuple1 = (200, "In Work", true)
var tuple2 = (true, "On Work", 200)
print( type(of:tuple1) == type(of:tuple2) )

//6.3
let floatStatus: (Float, String, Bool) = (200.2, "In Work", true)
let myProgramStatus: (Int, String, Bool) = (200, "In Work", true)
myProgramStatus

//6.4
typealias numberType = Int
// объявляем кортеж и инициализируем его значение
let numbersTuple: (Int, Int, numberType, numberType) = (0, 1, 2, 3)
numbersTuple // (.0 0, .1 1, .2 2, .3 3)


//6.5
// записываем значения кортежа в переменные
var (statusCode, statusText, statusConnect) = myProgramStatus
// выводим информацию
print("Код ответа — \(statusCode)")
print("Текст ответа — \(statusText)")
print("Связь с сервером — \(statusConnect)")

//6.6
/* объявляем сразу несколько
 переменных и устанавливаем
 для них значения */
var (myName, myAge) = ("Тролль", 140)
// выводим их значения
print("Меня зовут \(myName), и мне \(myAge) лет")

//6.7
/* получаем только необходимые
 значения кортежа */
var (statusCode2, _, _) = myProgramStatus
// выводим информацию
print(" Код ответа — \(statusCode2)")

//6.9
let myProgramStatus5 = (statusCode: 200, statusText: "In Work", statusConnect: true)

//6.10
// выводим информацию с использованием индексов
print(" Код ответа — \(myProgramStatus5.statusCode)")
print(" Текст ответа — \(myProgramStatus5.statusText)")
print(" Связь с сервером — \(myProgramStatus5.2)")


//6.11
/* объявляем кортеж с
 указанием имен элементов
 в описании типа */
let myProgramStatus6: (statusCode: Int, statusText: String, statusConnect: Bool) = (200, "In Work", true)
/* выводим значение элемента
 кортежа с помощью имени
 этого элемента*/
myProgramStatus6.statusCode // 200
/* объявляем кортеж с
 указанием имен элементов
 при инициализации их значений */
let myNewProgramStatus = (statusCode: 404, statusText:"Error", statusConnect:true)
/* выводим значение элемента
 кортежа с помощью имени
 этого элемента*/
myNewProgramStatus.statusText // Error

//6.12
// объявляем пустой кортеж
var myFirstTuple: (Int, String) = (0,"0")
// создаем кортеж со значением
var mySecondTuple = (100, "Код")
// передаем значение кортежа
myFirstTuple = mySecondTuple
myFirstTuple // (.0 100, .1 "Код")

//6.13
// объявляем кортеж
var someTuple = (200, true)
// изменяем значение отдельного элемента
someTuple.0 = 404
someTuple.1 = false
someTuple // (.0 404, .1 false)
