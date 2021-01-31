import Foundation
//32
let numArray: Array<Int> = [1, 2, 3, 4, 5]
var result: Int = 0
for number in numArray {
    result += number
}
result //15

//33
for number in 1...5 {
    print(number)
}
result //15

//33a
for char in "Swift" {
    print(char)
}
result //15

//34
// внешняя переменная
var myChar = "a"
// внешняя константа
let myString = "Swift"

// цикл использует связанный параметр с именем,
// уже используемым глобальной переменной
for myChar in myString {
    // локальная константа
    // вне цикла уже существует константа с таким именем
    let myString = "Char is"
    print("\(myString) \(myChar)")
}

myChar //"a"
myString //Swift


result = 0
var number = 777
for number in 1...5 {
    result += number
}
result // 15
number // 777

for i in 1...5 where i % 2 == 0 {
    print(i)
}


//35
var countriesAndBlocks = ["Россия": "СНГ", "Франция":"ЕС"]
for (countryName, orgName) in countriesAndBlocks {
    print("\(countryName) вступила в \(orgName)")
}
//36
countriesAndBlocks = ["Россия": "СНГ", "Франция":"ЕС"]
for (countryName, _) in countriesAndBlocks {
    print("страна — \(countryName)")
}

for (_, orgName) in countriesAndBlocks{
    print("ораганизация — \( orgName)")
}

//37
countriesAndBlocks = ["Россия": "ЕАЭС", "Франция":"ЕС"]
for countryName in countriesAndBlocks.keys {
    print("страна — \(countryName)")
}
for countryName in countriesAndBlocks.values {
    print("организация — \(countryName)")
}


//38
print("Несколько фактов обо мне:")
var myMusicStyles = ["Rock", "Jazz", "Pop"]
for (index, musicName) in myMusicStyles.enumerated() {
    print("\(index+1). Я люблю \(musicName)")
}

//39
let myName = "Swift"
for oneChar in myName {
    print(oneChar)
}

//40
var intNumbers: Array = [1, 4, 7, 9]
for element in intNumbers{
    // тело оператора
    // ...
}

//41
for i in stride( from:1, through: 10, by:3 ) {
    i
}

//42
for i in stride( from:1, to: 10, by:3 ) {
    i
}

//43
result = 0
for i in stride( from:1, through: 1000, by:2 ) {
    result += i
}
result

//44
result = 0
for i in 1...10 where i % 2 == 0 {
    result += i
}
result //30

//45
var isRun = true

// вариант 1
if isRun {
    for i in 1...10 {
        // тело оператора
    }
}

// вариант 2
for i in 1...10 where isRun {
    // тело оператора
}


//46
// словарь с результатами игр
var resultsOfGames = ["Red Wings":["2:1","2:3"], "Capitals":["3:6","5:5"],"Penguins":["3:3","1:2"]]
// обработка словаря
for (teamName, results) in resultsOfGames {
    // обработка массива результатов игр
    for oneResult in results {
        print("Игра с \(teamName)  — \(oneResult)")
    }
}

//47
for i in 1...10 {
    if i % 2 == 0 {
        continue
    } else {
        print(i)
    }
}

//48
import Foundation
for i in 1... {
    let randNum = Int(arc4random_uniform(100))
    if randNum == 5 {
        print("Итерация номер \(i)")
        break
    }
}
// 55

for i in 1... {
    let randNum = Array<Int>(0...100).randomElement()
    if randNum == 5 {
        print("Итерация номер \(i)")
        break
    }
}


var aa = 1
