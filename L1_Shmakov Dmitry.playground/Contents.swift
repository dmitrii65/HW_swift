import UIKit


/*  Решение квадратного уравнения
 по формуле a*x^2+b*x+c=0 */
let a:Double = 2
let b:Double = -5
let c:Double = 3
//Дискриминант
let d:Double = b*b - 4*a*c
 //Корни
let x1: Double = (-b + sqrt(d)) / 2 * a
let x2: Double = (-b - sqrt(d)) / 2 * a
print("Корень X1= \(x1) Корень X2= \(x2)")

// Найти площадь, периметр и гипотенузу треугольника

let sideA: Double = 8
let sideB: Double = 6
let hypotenuse: Double = sqrt((Double(sideA * sideA)+Double(sideB * sideB)))
let perimeter = sideA + sideB + hypotenuse
let square: Double = 0.5 * sideA * sideB
print ("Периметр = \(perimeter) Площадь = \(square) Гипотенуза = \(hypotenuse)")

//Найти сумму вклада через 5 лет

let deposit: Double = 124000
let yearProcent: Double = 7
var firstValue = deposit + (deposit * yearProcent)
var secondValue = firstValue + (firstValue * yearProcent)
var thirdValue = secondValue + (secondValue * yearProcent)
var fourthValue = thirdValue + (thirdValue * yearProcent)
var fifthValue = fourthValue + (fourthValue * yearProcent)
print("Сумма вклада через 5 лет = \(fifthValue)")



