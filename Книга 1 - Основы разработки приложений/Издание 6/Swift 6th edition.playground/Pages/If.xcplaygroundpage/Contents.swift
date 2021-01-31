// переменная типа Bool
var logicVar = false
// проверка значения переменной
if logicVar {
    print("Переменная logicVar истинна")
} else {
    print("Переменная logicVar ложна")
}

//7-8
var a = 1054
var b = 952
if a+b > 1000 {
    print( "Сумма больше 1000" )
}else{
    print( "Сумма меньше 1000" )
}

//7-9
// переменные типа Bool
var firstLogicVar = true
var secondLogicVar = true
// проверка значения переменных
if firstLogicVar || secondLogicVar {
    print("Одна из переменных истинна")
} else {
    print("Обе переменные ложны")
}

//7-10
if firstLogicVar || secondLogicVar {
    if firstLogicVar && secondLogicVar {
        print("Обе переменных истинны")
    }else{
        print("Только одна из переменных истинна")
    }
} else {
    print("Обе переменные ложны")
}

//7-11
if firstLogicVar && secondLogicVar {
    print("Обе переменные истинны")
} else if firstLogicVar || secondLogicVar {
    print("Одна из переменных истинна")
} else {
    print("Обе переменные ложны")
}

//7-12
if firstLogicVar || secondLogicVar {
    print("Одна из переменных истинна")
} else if firstLogicVar && secondLogicVar {
    print("Обе переменные истинны")
} else {
    print("Обе переменные ложны")
}

//7-13
// количество жильцов в доме
var tenantCount = 6
// стоимость аренды на человека
var rentPrice = 0
/* определение цены на одного
 человека в соответствии с условием */
if tenantCount < 5 {
    rentPrice = 1000
} else if tenantCount >= 5 && tenantCount <= 7 {
    rentPrice = 800
} else {
    rentPrice = 500
}
// вычисление общей суммы средств
var allPrice = rentPrice * tenantCount // 4800

//13a
if (..<5).contains(tenantCount) {
    rentPrice = 1000
} else if (5...7).contains(tenantCount) {
    rentPrice = 800
} else if (8...).contains(tenantCount) {
    rentPrice = 500
}
allPrice = rentPrice * tenantCount // 4800

// primer
var x = 50
var y = 25
y = ( x > 100 ? 100 : 50 )

//7-14
let a1 = 1
let b1 = 2
// сравнение значений констант
//var t = (a1 <= b1 ? print("A меньше или равно B"):print("A больше B"))
//type(of: t)

//7-15
// переменная типа Int
var height = 180
// переменная типа Bool
var isHeader = true
// вычисление значения константы
let rowHeight = height + (isHeader ? 20 : 10 )
// вывод значения переменной
rowHeight // 200
