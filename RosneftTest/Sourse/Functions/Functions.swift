//
//  Functions.swift
//  RosneftTest
//
//  Created by admin on 25.11.2023.
//

import Foundation

// Функция расчета эффективности системы очистки
func countsResult (_ arrayDouble: [Double]) -> Double {
    
    let firstResult = arrayDouble[0] * (arrayDouble[1] - arrayDouble[2])
    let secondResult = arrayDouble[4] * (arrayDouble[1] - arrayDouble[3])
    let thirdResult = 2.5 - arrayDouble[1]
    let fourthResult = 0.785 * ((arrayDouble[5] / 1000.0) * (arrayDouble[5] / 1000.0))
    let fifthResult = fourthResult * arrayDouble[7] * arrayDouble[6]
    let result = (firstResult - secondResult) / thirdResult * fifthResult
    
    return result
}

// Функция конвертации String? в Double
func convertToDoubles(_ strings: [String?]) -> [Double] {
    var doubles = [Double]()
    
    for string in strings {
        if let str = string, let doubleVal = Double(str) {
            doubles.append(doubleVal)
        } else {
            print("Не хватает значения")
        }
    }
    return doubles
}
