//
//  swift 9th stream
//  Lesson_12
//
//  Created by Evgeny Mastepan on 27.10.2024.
//

import Foundation


func findMaximum<T: Comparable>(in array: [T]) -> T? {
    return array.max() ?? nil
}

let digitArray = [5, 12, 3, 27, 8, 0, 2, 14, 5]
let stringArray = ["Apple", "IBM", "Dell", "Yandex", "Hewlett Packard", "Gateway 2000", "Olivetti", "Cisco"]

let maxDigit = findMaximum(in: digitArray) ?? 0
print (maxDigit)

let maxString = findMaximum(in: stringArray) ?? " "
print (maxString)
