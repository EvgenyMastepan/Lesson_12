//
//  swift 9th stream
//  Lesson_12
//
//  Created by Evgeny Mastepan on 27.10.2024.
//

import Foundation

/* Задание 1: Реализуйте универсальную функцию с ограничением типа */

func findMaximum<T: Comparable>(in array: [T]) -> T? {
    return array.max() ?? nil
}

let digitArray = [5, 12, 3, 27, 8, 0, 2, 14, 5]
let stringArray = ["Apple", "IBM", "Dell", "Yandex", "Hewlett Packard", "Gateway 2000", "Olivetti", "Cisco"]

let maxDigit = findMaximum(in: digitArray) ?? 0
print (maxDigit)

let maxString = findMaximum(in: stringArray) ?? " "
print (maxString)

/* Задание 2: Реализуйте дженерическую структуру
 Pair */

struct Pair<T: Equatable, U: Equatable> {
    var first: T
    var second: U

    func isEqual(to other: Pair) -> Bool {
        return self.first == other.first && self.second == other.second
    }
}

let pair1 = Pair(first: 17, second: "Cats")
let pair2 = Pair(first: 17, second: "Cats")
let pair3 = Pair(first: 25, second: "Brighton")

print(pair1.isEqual(to: pair2)) // true
print(pair1.isEqual(to: pair3)) // false
