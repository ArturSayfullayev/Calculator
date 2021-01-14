//
//  Math Logic.swift
//  Calculator
//
//  Created by Artur on 1/14/21.
//

import UIKit


class Logic {
    
    /// Фкнкция рассчета матепатических операций
    static func mathLogic(nums: String, operators: [Character]) -> String {
        var arrayNums: [String] = nums.components(separatedBy: ["-", "+", "x", "÷", "%"])
        
        if operators.contains("%") {
            let percent =
                (Double(arrayNums[arrayNums.count - 2]) ?? 0) / 100 * (Double(arrayNums[arrayNums.count - 1]) ?? 0)
            arrayNums[arrayNums.count - 1] = String(percent.formatter())
        }
        
        var firstNum: Double = Double(arrayNums.removeFirst()) ?? 0
        
        for i in 0...operators.count - 1{
            let currentNum: Double = Double(arrayNums[i]) ?? 0
            switch operators[i] {
            case "+":
                firstNum += currentNum
            case "-":
                firstNum -= currentNum
            case "x":
                firstNum *= currentNum
            case "÷":
                firstNum /= currentNum
            default: break
            }
        }
        return firstNum.formatter()
    }
    
    /// Функция рассчета квадратного корня
    static func sqrtLogic(nums: String) -> String {
        return sqrt((Double(nums) ?? 0)).formatter()
    }
}
