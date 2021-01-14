//
//  ActionOfCalculator.swift
//  Calculator
//
//  Created by Artur on 1/7/21.
//

import UIKit

func actionButtons() {
    guard let button = sender as? UIButton else { return }
    guard let text = self.label.text else { return }
    
    switch button.tag {
    case 0...9:
        if isEmpty == true || text == "0" {
            self.label.text = String(button.tag)
            isEmpty = false
        } else {
            self.label.text = text + String(button.tag)
        }
    case 16:
        if text.first == "-" {
            self.label.text?.removeFirst()
        } else {
            self.label.text?.insert("-", at: text.startIndex)
        }
    case 17:
        self.label.text = text + String(".")
    default:
        return
    }
}
