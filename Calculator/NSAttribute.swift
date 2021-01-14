//
//  NSAttribute.swift
//  Calculator
//
//  Created by Artur on 1/12/21.
//

import UIKit

func setAmount(with summ: Double) {
    let mainPart: String = String(Int(summ))
    let decimalPart: String = "\(String(summ).split(separator: ".")[1])"
    
    let mainAttributes: [NSAttributedString.Key: Any] = [
        NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 40),
        NSAttributedString.Key.foregroundColor: UIColor.black]
    let decimalAttributes: [NSAttributedString.Key: Any] = [
        NSAttributedString.Key.font: UIFont.systemFont(ofSize: 35),
        NSAttributedString.Key.foregroundColor: UIColor.gray]
    
    let amountAttributedText = NSMutableAttributedString(string: mainPart,
                                                         attributes: mainAttributes)
    if !decimalPart.isEmpty {
        amountAttributedText.append(NSAttributedString(string: ",",
                                                       attributes: mainAttributes))
        amountAttributedText.append(NSAttributedString(string: decimalPart,
                                                       attributes: decimalAttributes))
    }
}
