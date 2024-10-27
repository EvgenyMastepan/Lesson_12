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

print(pair1.isEqual(to: pair2))
print(pair1.isEqual(to: pair3))

/* Задание 3: Расширение для String — проверка на палиндром */

extension String {
    var isPalindrome: Bool {
        let palindromeString = self.lowercased().replacingOccurrences(of: " ", with: "")
        return palindromeString == String(palindromeString.reversed())
    }
}

let string1 = "Was it a car or a cat I saw"
let string2 = "А роза упала на лапу Азора"
let string3 = "Это вообще ни разу не палиндром"

print(string1.isPalindrome)
print(string2.isPalindrome)
print(string3.isPalindrome)

/* 4: Расширение для Array — метод chunked */

extension Array {
    func chunked(size: Int) -> [[Element]] {
        guard size > 0 else { return [] }
        
        var chunks: [[Element]] = []
//        stride(from: 0, to: self.count, by: size).forEach { let chunk = Array(self[$0..min(index + size, self.count)])}
        for index in stride(from: 0, to: self.count, by: size) {
            let chunk = Array(self[index..<Swift.min(index + size, self.count)])
            chunks.append(chunk)
        }
        return chunks
    }
}

// Пример использования
let array1 = [1, 2, 3, 4, 5, 6, 7]
let array2 = ["Взвейтесь", "кострами", "синие", "ночи", "мы", "пионеры", "дети", "рабочих", "близится", "эра", "светлых", "годов", "клич", "пионера", "всегда", "будь", "готов"]
let chunkedArray1 = array1.chunked(size: 3)
let chunkedArray2 = array2.chunked(size: 4)
print(chunkedArray1)
print(chunkedArray2)

/* Задание 5: Ограничение типа с протоколом */

func compare<T: Comparable>(_ a: T, _ b: T) {
    if a > b {
        print("\(a) больше чем \(b)")
    } else if a < b {
        print("\(a) меньше чем \(b)")
    } else {
        print("\(a) равно \(b)")
    }
}

compare(25.8, 14.54)
compare("Экстеншн", "Джереник")
compare(2, 4)
compare(7, 7)
compare("D", "M")
