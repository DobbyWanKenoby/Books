import Foundation

//0
var sett = Set(arrayLiteral: true, false)
sett

// 1
/* набор, созданный путем
 явного указания типа */
var dishes: Set<String> = ["хлеб", "овощи", "тушенка", "вода"]
/* набор, созданный без явного
 указания типа данных */
var dishesTwo: Set = ["хлеб", "овощи", "тушенка", "вода"]
/* набор, созданный с помощью
 функции при явном
 указании типа данных*/
var members = Set<String>(arrayLiteral: "Энекин", "Оби Ван", "Йода")
/* набор, созданный с помощью
 функции без явного указания
 типа данных */
var membersTwo = Set(arrayLiteral: "Энекин", "Оби Ван", "Йода")

//2
// создание пустого набора
var emptySet = Set<String>()
// набор со значениями
var setWithValues: Set<String> = ["хлеб", "овощи"]
// удаление всех элементов набора
setWithValues = []
setWithValues // Set([])

//3
// создаем пустой набор
var musicStyleSet: Set<String> = []
// добавляем к нему новый элемент
var a = musicStyleSet.insert("Jazz")
a.inserted
musicStyleSet.insert("Jazz")
musicStyleSet  //"Jazz"

//4
// создание набора со значениями
musicStyleSet = ["Jazz", "Hip-Hop", "Rock"]
// удаляем один из элементов
var removeStyleResult = musicStyleSet.remove("Hip-Hop")
removeStyleResult //"Hip-Hop"
musicStyleSet //{"Jazz", "Rock"}
// удаляем несуществующий элемент
musicStyleSet.remove("Classic") //nil
// удаляем все элементы набора
musicStyleSet.removeAll()
musicStyleSet  //Set([])

//5
musicStyleSet = ["Jazz", "Hip-Hop", "Rock", "Funk"]
// проверка существования значения в наборе
musicStyleSet.contains("Funk") // true
musicStyleSet.contains("Pop") // false

//6
// набор с четными цифрами
let evenDigits: Set = [0, 2, 4, 6, 8]
// набор с нечетными цифрами
let oddDigits: Set = [1, 3, 5, 7, 9]
// набор со смешанными цифрами
var differentDigits: Set = [3, 4, 7, 8]

//7
var inter = differentDigits.intersection(oddDigits)
inter //{3, 7}

//8
var exclusive = differentDigits.symmetricDifference(oddDigits)
exclusive //{4, 8, 1, 5, 9}

// 9
var union = evenDigits.union(oddDigits)
union //{8, 4, 2, 7, 3, 0, 6, 5, 9, 1}


//10
var subtract = differentDigits.subtracting(evenDigits)
subtract // {3, 7}

//10a
var aSet: Set = [1, 2, 3, 4, 5]
var bSet: Set = [1, 3]
var cSet: Set = [6, 7, 8, 9]

//11
// создаем набор и его копию

var copyOfBSet = bSet
/* в наборах bSet и copyOfBSet одинаковый состав
 элементов. Проверим их эквивалентность */
bSet == copyOfBSet //true

//12
bSet.isSubset(of: aSet) //true

//13
aSet.isSuperset(of: bSet)  //true

//14
bSet.isDisjoint(with: cSet) //true

//15
bSet.isStrictSubset(of: aSet) //true
aSet.isStrictSuperset(of: bSet) //true

//16
var setOfNums: Set = [1,10,2,5,12,23]
var sortedArray = setOfNums.sorted()
sortedArray //[1, 2, 5, 10, 12, 23]
type(of: sortedArray) //Array<Int>.Type


//17
musicStyleSet.count //4

