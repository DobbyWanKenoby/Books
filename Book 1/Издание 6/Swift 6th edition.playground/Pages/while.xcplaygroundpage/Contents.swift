import Foundation

// начальное значение
var i = 1
// хранилище результата сложения
var resultSum = 0
// цикл для подсчета суммы
while i <= 10 {
    resultSum += i
    i  += 1
}
resultSum //55

//29
// начальное значение
var y = 1
// хранилище результата сложения
var result = 0
// цикл для подсчета суммы
repeat{
    result += y
    y += 1
} while y <= 10
result //55

//30
var x = 0
var sum = 0
while x <= 10 {
    x += 1
    if x % 2 == 1 {
        continue
    }
    sum += x
}
sum //30

//31
var lastNum = 54
var currentNum = 1
var sumOfInts = 0
while currentNum <= lastNum {
    sumOfInts += currentNum
    if sumOfInts > 450 {
        print("Хранилище заполнено. Последнее обработанное число - \(currentNum)")
        break
    }
    currentNum += 1
}
