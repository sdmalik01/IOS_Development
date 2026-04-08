//
//  ViewController.swift
//  Calculator
//
//  Created by mgm vfx on 04/04/26.
//

import UIKit

class ViewController: UIViewController {
    
    var number:String = ""
    var operation:String = ""
    var firstNumber:Double = 0
    var SecondNumber:Double = 0
    var answer:Double = 0
    var expression:String = ""
    
    
    @IBOutlet var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func zeroPress(_ sender: UIButton) {
        number.append("0")
        expression.append("0")
        result.text = expression
    }
    
    @IBAction func onePress(_ sender: UIButton) {
        number.append("1")
        expression.append("1")
        result.text = expression
    }
    
    
    @IBAction func twoPress(_ sender: UIButton) {
        number.append("2")
        expression.append("2")
        result.text = expression
    }
    
    
    @IBAction func threePress(_ sender: UIButton) {
        number.append("3")
        expression.append("3")
        result.text = expression
    }
    
    @IBAction func fourPress(_ sender: UIButton) {
        number.append("4")
        expression.append("4")
        result.text = expression
    }
    
    @IBAction func fivePress(_ sender: UIButton) {
        number.append("5")
        expression.append("5")
        result.text = expression
    }
    
    @IBAction func sixPress(_ sender: UIButton) {
        number.append("6")
        expression.append("6")
        result.text = expression
    }
    
    @IBAction func sevenPress(_ sender: UIButton) {
        number.append("7")
        expression.append("7")
        result.text = expression
    }
    
    
    @IBAction func eightPress(_ sender: UIButton) {
        number.append("8")
        expression.append("8")
        result.text = expression
    }
    
    
    @IBAction func ninePress(_ sender: UIButton) {
        number.append("9")
        expression.append("9")
        result.text = expression
    }
    
    
    @IBAction func add(_ sender: UIButton) {
        operation = "+"
        firstNumber = Double(number) ?? 0
        expression.append("+")
        number = ""
        result.text = expression
    }
    
    
    @IBAction func substract(_ sender: UIButton) {
        operation = "-"
        firstNumber = Double(number) ?? 0
        expression.append("-")
        number = ""
        result.text = expression
    }
    
    
    @IBAction func multiply(_ sender: UIButton) {
        operation = "X"
        firstNumber = Double(number) ?? 0
        expression.append("X")
        number = ""
        result.text = expression
    }
    
    
    @IBAction func Divide(_ sender: UIButton) {
        operation = "/"
        firstNumber = Double(number) ?? 0
        expression.append("/")
        number = ""
        result.text = expression
    }
    
    
    @IBAction func module(_ sender: UIButton) {
        operation = "%"
        firstNumber = Double(number) ?? 0
        expression.append("%")
        number = ""
        result.text = expression
    }
    
    
    @IBAction func autoClear(_ sender: UIButton) {
        if number != "" || expression != "" {
            // Clear all
            number = ""
            expression = ""
            firstNumber = 0
            SecondNumber = 0
            answer = 0
            operation = ""
            
            result.text = "0"
            
        }
    }
    
    
    @IBAction func equalTo(_ sender: UIButton) {
        
        //  if no new number entered, do nothing
        if number == "" {
            return
        }
        
        SecondNumber = Double(number) ?? 0
        switch operation {
        case "+":
            answer = firstNumber + SecondNumber
        case "-":
            answer = firstNumber - SecondNumber
        case "X":
            answer = firstNumber * SecondNumber
        case "/":
            answer = firstNumber / SecondNumber
        case "%":
            answer = firstNumber.truncatingRemainder(dividingBy: SecondNumber)
        default:
            break
        }
        result.text = String(answer)
        number = String(answer)
    }
    
    
    @IBAction func decimalPress(_ sender: UIButton) {
        if number.contains(".") {return}
        
        if number == ""{
            number = "0."
            expression += "0."
        } else {
            number.append(".")
            expression.append(".")
        }
        
        result.text = expression
    }
    
}

