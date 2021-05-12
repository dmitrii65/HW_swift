import UIKit

import UIKit
//1.Написать функцию, которая определяет, четное число или нет.
func evenAndOdd(_ number: Int) -> Bool {
    return number % 2 == 0
}
let a = 12
let b = 13
evenAndOdd(a)// четное
evenAndOdd(b)//нечет

// 2.Написать функцию, которая определяет, делится ли число без остатка на 3.
func withoutOddThree(_ number: Int) -> Bool {
    return number % 3 == 0
}
withoutOddThree(a)
withoutOddThree(b)

//3.Создать возрастающий массив из 100 чисел.

var increaseArray:[Int] = []
for  index in 0...99 {
    increaseArray.append(index) }
print(increaseArray)

//4.Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

for (_, value) in increaseArray.enumerated() {
    if evenAndOdd(value) {
        increaseArray.remove(at:increaseArray.firstIndex(of:value)!)
    }
}
for (_, value) in increaseArray.enumerated() {
    if withoutOddThree(value) {
        increaseArray.remove(at:increaseArray.firstIndex(of:value)!)
    }
}
