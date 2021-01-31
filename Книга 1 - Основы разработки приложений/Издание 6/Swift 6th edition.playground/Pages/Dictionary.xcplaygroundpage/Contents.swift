import Foundation

[200:"success",300:"warning",400:"error"]

var dictionary = ["one":"один", "two": "два", "three":"три"]

//3
// базовая коллекция кортежей (пар значений)
let baseCollection = [(2, 5), (3, 6), (1, 4)]
// создание словаря на основе базовой коллекции
let newDictionary = Dictionary(uniqueKeysWithValues: baseCollection)
newDictionary //[3: 6, 2: 5, 1: 4]

//4
let nearestStarNames = ["Proxima Centauri", "Alpha Centauri A", "Alpha Centauri B"]
let nearestStarDistances = [4.24, 4.37, 4.37]
let starDistanceDict = Dictionary(uniqueKeysWithValues: zip(nearestStarNames, nearestStarDistances))
starDistanceDict // ["Proxima Centauri": 4.24, "Alpha Centauri B": 4.37, "Alpha Centauri A": 4.37]
//5
var countryDict = ["RUS":"Россия", "BEL": "Беларусь", "UKR":"Украина"]
// получаем значение элемента
countryDict["BEL"] // "Беларусь"
// изменяем значение элемента
countryDict["RUS"] = "Российская Федерация"
countryDict //["RUS": "Российская Федерация", "BEL": "Беларусь", "UKR": "Украина"]

// изменяем значение элемента
var oldValueOne = countryDict.updateValue("Республика Белорусия", forKey: "BEL")
oldValueOne //"Беларусь"
var oldValueTwo = countryDict.updateValue("Эстония", forKey: "EST")
oldValueTwo //nil

//10
var codeDesc = [200: "success", 300: "warning", 400: "error"]
type(of: codeDesc) //Dictionary<Int, String>.Type

//primer
var dictOne: Dictionary<Int,Bool> = [100: false, 200: true, 400: true]
var dictTwo: [String:String] = ["Jonh":"Dave", "Eleonor":"Green"]

//11
countryDict["TUR"] = "Турция"
countryDict //["BEL": "Республика Белорусия", "TUR": "Турция", "UKR": "Украина", "EST": "Эстония", "RUS": "Российская Федерация"]

//12
countryDict["TUR"] = nil
countryDict.removeValue(forKey: "BEL")
countryDict //["RUS": "Российская Федерация", "UKR": "Украина", "EST": "Эстония"]

var emptyDictionary: [String:Int] = [:]
var AnotherEmptyDictionary = Dictionary<String,Int>()

var birthYears = [1991: ["John", "Ann", "Vasiliy"], 1993: ["Alex", "Boris"] ]
birthYears = [:]
birthYears  //[:]

//13
var someDictionary = ["One":1, "Two":2, "Three":3]
// количество элементов в словаре
someDictionary.count // 3

//14
var emptyDict: [String:Int] = [:]
emptyDict.count //0
emptyDict.isEmpty //true

//15
// все ключи словаря countryDict
var keys = countryDict.keys
type(of: keys) // Dictionary<String, String>.Keys.Type
keys // Dictionary.Keys(["UKR", "RUS", "EST"])

// все значения словаря countryDict
var values = countryDict.values
type(of: values) //Dictionary<String, String>.Values.Type
values // Dictionary.Values(["Украина", "Эстония", "Российская Федерация"])

var keysSet = Set(keys)
keysSet //{"UKR", "RUS", "EST"}
var valuesArray = Array(values)
valuesArray //["Эстония", "Украина", "Российская Федерация"]

// optional
let someDict = [1:"one", 3:"three"]
someDict[2] // nil
type(of: someDict[2]) //Optional<String>.Type

