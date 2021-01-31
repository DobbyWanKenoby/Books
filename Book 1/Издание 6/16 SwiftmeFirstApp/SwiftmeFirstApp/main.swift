//
//  main.swift
//  SwiftmeFirstApp
//
//  Created by Василий Усов on 18.07.2020.
//

import Foundation

print("Введите первое значение")
// получение первого значения
var a = readLine()
print("Введите второе значение")
// получение второго значения
var b = readLine()

let result = sum(a, b)
print("Результат сложения - \(result)")
