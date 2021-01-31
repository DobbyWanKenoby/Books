//: [Previous](@previous)

import Foundation

var someVar = 100

//var str1 = "Данные"
//var str2 = "неверны"
//var strEmpty = " "

// утверждение с двумя аргументами
//assert( someVar > 100, str1+strEmpty+str2 )
// утверждение с одним аргументов
//assert( anotherVar <= 10 )

let strName = "Дракон"
let strYoung = "молод"
let strOld = "стар"
let strEmpty = " "

var dragonAge = 220
assert( dragonAge <= 235, strName+strEmpty+strOld )
assert( dragonAge >= 225, strName+strEmpty+strYoung )
print("Программа упешно завершила свою работу")

