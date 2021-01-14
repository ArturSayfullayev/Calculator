//
//  ViewController.swift
//  Calculator
//
//  Created by Artur on 1/6/21.
//

import UIKit



class ViewController: UIViewController {
    
    // MARK: - Properties
    private var mathArray: [Character] = []
    
    // MARK: - Outlets
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet var buttons: [UIButton]! {
        didSet {
            self.buttons.forEach { $0.layer.cornerRadius = $0.frame.height / 3 }
            self.buttons.forEach { $0.layer.borderWidth = 1 }
            self.buttons.forEach { $0.layer.borderColor = UIColor.gray.cgColor }
            self.buttons.forEach { $0.layer.shadowColor = UIColor.gray.cgColor }
            self.buttons.forEach { $0.layer.shadowRadius = 2 }
            self.buttons.forEach { $0.layer.shadowOpacity = 0.3 }
        }
    }
    
    @IBOutlet var operators: [UIButton]! {
        didSet {
            self.operators.forEach { $0.layer.cornerRadius = $0.frame.height / 2.5 }
            self.operators.forEach { $0.layer.borderWidth = 1 }
            self.operators.forEach { $0.layer.borderColor = UIColor.gray.cgColor }
            self.operators.forEach { $0.layer.shadowColor = UIColor.gray.cgColor }
            self.operators.forEach { $0.layer.shadowRadius = 3 }
            self.operators.forEach { $0.layer.shadowOpacity = 0.4 }
        }
    }
     
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Actions
    @IBAction func buttonsNums(_ sender: Any) {
        
        guard let button = sender as? UIButton else { return }
        guard let text = self.label.text else { return }
        
        
        switch button.tag {
        case 0...9:
            if text.isEmpty || text == "0" {
                self.label.text = String(button.tag)
            } else {
                self.label.text = text + String(button.tag)
            }
        case 10:
            self.label.text = ""
            self.mathArray.removeAll()
        case 11:
            self.label.text = text + String("÷")
            self.mathArray.append("÷")
        case 12:
            self.label.text = text + String("x")
            self.mathArray.append("x")
        case 13:
            self.label.text = text + String("-")
            self.mathArray.append("-")
        case 14:
            self.label.text = text + String("+")
            self.mathArray.append("+")
        case 15:
            self.label.text = Logic.mathLogic(nums: text, operators: mathArray)
        case 16:
            if text.first == "-" {
                self.label.text?.removeFirst()
            } else {
                self.label.text?.insert("-", at: text.startIndex)
            }
        case 17:
            self.label.text = text + String(".")
        case 18:
            self.label.text = Logic.sqrtLogic(nums: text)
        case 19:
            self.label.text = text + String("%")
            self.mathArray.append("%")
        default:
            return
        }
    }
}

