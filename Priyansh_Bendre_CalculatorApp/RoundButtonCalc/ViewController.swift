//
//  ViewController.swift
//  RoundButtonCalc
//
//  Created by Priyansh Bendre on 5/22/20.
//  Copyright © 2020 Priyansh Bendre. All rights reserved.
// iPhone 11

import UIKit

enum operations: String {
    case Add = "+"
    case Subtract = "-"
    case Divide = "/"
    case Multiply = "*"
    case Mod = "%"
    case plusminus = "+/-"
    case NULL = "Null"
}

class ViewController: UIViewController {

    @IBOutlet var ResultLabel: UILabel!

    var CurrentNumber = ""
    var leftValue = ""
    var rightValue = ""
    var result = ""
    var currentOperation:operations = .NULL

    @IBAction func numberkey(_ sender: roundButton) {
        if CurrentNumber.count <= 8 { //max number of digits on calculator
        CurrentNumber += "\(sender.tag)"
        ResultLabel.text = CurrentNumber
        }
    }

    @IBAction func clearButton(_ sender: roundButton) {
        CurrentNumber = ""
        leftValue = ""
        rightValue = ""
        result = ""
        currentOperation = .NULL
        ResultLabel.text = "0"
    }
        
    @IBAction func decimalButton(_ sender: roundButton) {
        if CurrentNumber.count <= 7{ //last digit cannot be a decimal
        CurrentNumber += "."
        ResultLabel.text = CurrentNumber
        }
    }
    
    @IBAction func equalButton(_ sender: roundButton) {
        operations(operation: currentOperation)
    }
    @IBAction func AddButton(_ sender: roundButton) {
        operations(operation: .Add)
    }
    @IBAction func SubtractButton(_ sender: roundButton) {
        operations(operation: .Subtract)
    }
    @IBAction func MultiplyButton(_ sender: roundButton) {
        operations(operation: .Multiply)
    }
    @IBAction func DivideButton(_ sender: roundButton) {
        operations(operation: .Divide)
    }
    @IBAction func modButton(_ sender: roundButton) {
        operations(operation: .Mod)
    }
    @IBAction func plusminus(_ sender: roundButton) {
        operations(operation: .plusminus)
    }
    
    
    
    func operations(operation: operations) {
        if currentOperation != .NULL{
            if CurrentNumber != ""{
                rightValue = CurrentNumber
                CurrentNumber = ""
                
                if currentOperation == .Add {
                    result = "\(Double(leftValue)! + Double(rightValue)!)"
                }
                else if currentOperation == .Subtract {
                    result = "\(Double(leftValue)! - Double(rightValue)!)"
                }
                else if currentOperation == .Multiply {
                    result = "\(Double(leftValue)! * Double(rightValue)!)"
                }
                else if currentOperation == .Divide {
                    result = "\(Double(leftValue)! / Double(rightValue)!)"
                }
                else if currentOperation == .Mod { 
                    result = "\(Double(CurrentNumber)!/100)"
                    print(result)
                }
                else if currentOperation == .plusminus{
                    if ResultLabel.text != "-"{
                        result = "+" + ResultLabel.text!
                    }
                }
                leftValue = result
                ResultLabel.text = result
            }
        currentOperation = operation
        }
        else {
            leftValue = CurrentNumber
            CurrentNumber = ""
            currentOperation = operation
            }
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ResultLabel.text = "0"
    }

}

