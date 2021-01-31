import UIKit

//1
// неизменяемый массив
// с элементами типа String
let alphabetArray = ["a", "b", "c"]
// изменяемый массив
// с элементами типа Int
var mutableArray = [2, 4, 8]

// 2
// создание массива с помощью передачи списка значений
let newAlphabetArray = Array(arrayLiteral: "a", "b", "c")
newAlphabetArray // ["a", "b", "c"]


// 5
// создание массива с помощью оператора диапазона
let lineArray = Array(0...9)
lineArray // [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

//6
// создание массива с повторяющимися значениями
let repeatArray = Array(repeating:  "Swift", count: 5)
repeatArray // ["Swift", "Swift", "Swift", "Swift", "Swift"]

//8
// неизменяемый массив
let alphabetArray2 = ["a", "b", "c"]
// изменяемый массив
var mutableArray2 = [2, 4, 8]
// доступ к элементам массивов
alphabetArray2[1]
mutableArray2[2]

//9
// изменяемый массив
mutableArray = [2, 4, 8]
// изменение элемента массива
mutableArray[1] = 16
// вывод нового массива
mutableArray // [2, 16, 8]

//10
// изменяемый массив
var stringsArray = ["one", "two", "three", "four"]
// скопируем подмассив в отдельную переменную

// заменим несколько элементов новым массивом
stringsArray[1...2] = ["five"]
stringsArray // ["one", "five", "four"]
stringsArray[2] // "four"

//10a
// Массив с типом данных [String] или Array<String>
var firstAr = Array(arrayLiteral: "a", "b", "c") // ["a", "b", "c"]
type(of: firstAr) // Array<String>.Type
// Массив с типом данных [Int] или Array<Int>
var secondAr = Array(1..<5) // [1, 2, 3, 4]
type(of: secondAr) // Array<Int>.Type

//
var arrayName: Array<Character> = ["a", "b", "c"]

//10b
// неизменяемый массив
let unmutableArray = ["one", "two", "three"]
// копируем массив из константы в переменную
var newArray = unmutableArray
newArray // ["one", "two", "three"]
// изменяем значение нового массива
newArray[1] = "four"
// выводим значение исходного массива
unmutableArray // ["one", "two", "three"]

//12
/* объявляем массив с пустым значением
  с помощью переданного значения */
var emptyArray: [String] = [] // []
 /* объявляем массив с пустым значением
  с помощью специальной функции */
var anotherEmptyArray = [String]() // []

// 14
/* три константы, которые
 cтанут элементами массива */
let a1 = 1
let a2 = 2
let a3 = 3
var a = [1, 2, 3]
a == [a1, a2, a3] // true

//15
// создаем два массива
let charsOne = ["a", "b", "c"]
let charsTwo = ["d", "e", "f"]
let charsThree = ["g", "h", "i"]
// создаем новый слиянием двух
var alphabet = charsOne + charsTwo
// сливаем новый массив со старым
alphabet += charsThree
alphabet[8] // "i"

//16
var arrayOfArrays = [[1,2,3], [4,5,6], [7,8,9]]

//17
arrayOfArrays = [[1,2,3], [4,5,6], [7,8,9]]
// получаем вложенный массив
arrayOfArrays[2] // [7, 8, 9]
// получаем элемент вложенного массива
arrayOfArrays[2][1] // 8

//18
//var someArray = [1, 2, 3, 4, 5]
// количество элементов в массиве
//someArray.count

//19
var someArray: [Int] = []
someArray.count // 0
someArray.isEmpty // true


//20
var numArray = [1, 2, 3, 5, 4]
// количество элементов в массиве
var sliceOfArray = numArray[numArray.count-3...numArray.count-1] // [3, 4, 5]

//21
//var someArray = [1, 2, 3, 4, 5]
// получаем три последних элемента массива
let subArray = numArray.suffix(3) // [3, 4, 5]

//22
// возвращает первый элемент массива
numArray.first // 1
// возвращает последний элемент массива
numArray.last  // 5

//23
numArray // [1, 2, 3, 4, 5]
numArray.append(6) // [1, 2, 3, 4, 5, 6]

//24
numArray // [1, 2, 3, 4, 5, 6]
// вставляем новый элемент в середину массива
numArray.insert(100, at: 2) // [1, 2, 100, 3, 4, 5, 6]

//25
numArray // [1, 2, 100, 3, 4, 5, 6]
// удаляем третий элемент массива (с индексом 2)
numArray.remove(at: 2) // 100
// удаляем первый элемент массива
numArray.removeFirst() // 1
// удаляем последний элемент массива
numArray.removeLast() // 6
/* итоговый массив содержит
  всего четыре элемента */
numArray // [2, 3, 4, 5]

//26
numArray // [2, 3, 4, 5]
// удаляем последний элемент
numArray.dropLast() // [2, 3, 4]
// удаляем три первых элемента
var anotherNumArray = numArray.dropFirst(3)
anotherNumArray // [5]
numArray // [2, 3, 4, 5]

//27
numArray // [2, 3, 4, 5]
 // проверка существования элемента
let resultTrue = numArray.contains(4)   //   true
let resultFalse = numArray.contains(10)  //    false

//29
let randomArray = [3, 2, 4, 5, 6, 4, 7, 5, 6]
// поиск минимального элемента
randomArray.min() // 2
// поиск максимального элемента
randomArray.max() // 7

//30
var myAlphaArray = ["a", "bb", "ccc"]
myAlphaArray.reverse()
myAlphaArray // ["ccc", "bb", "a"]

//30a
// исходная неосотрированная коллекция
var unsortedArray = [3, 2, 5, 22, 8, 1, 29]

// метод sorted() возвращает отсортированную последовательность
// при этом исходный массив не изменяется
var sortedArray = unsortedArray.sorted()
unsortedArray //[3, 2, 5, 22, 8, 1, 29]
sortedArray //[1, 2, 3, 5, 8, 22, 29]

//метод sort() изменяет исходный массив
unsortedArray.sort()
unsortedArray //[1, 2, 3, 5, 8, 22, 29]

//31
var arrayOfNumbers = Array(1...10)
type(of: arrayOfNumbers) // Array<Int>.Type
arrayOfNumbers // [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
// получим часть массива
var slice = arrayOfNumbers[4...6]
slice // [5, 6, 7]
type(of: slice) // ArraySlice<Int>.Type

//32
type(of: slice) // ArraySlice<Int>.Type
var arrayFromSlice = Array(slice)
type(of: arrayFromSlice) // Array<Int>.Type

//33
// исходный массив
arrayOfNumbers // [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
// его срез
slice // [5, 6, 7]
// отдельный элемент
arrayOfNumbers[5] // 6
slice[5] // 6
