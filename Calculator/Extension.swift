//
//  Extension.swift
//  Calculator
//
//  Created by Artur on 1/7/21.
//

import UIKit

///  Расширение для вывода красивого числа, без 0 на конце и до 5 символов после запятой. Конвертация типа Double в String.
extension Double {
    func formatter() -> String {
        let divisor = pow(10.0, Double(5))
        return String(format: "%g", (self * divisor).rounded() / divisor)
    }
}
