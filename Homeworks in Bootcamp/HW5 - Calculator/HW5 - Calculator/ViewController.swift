//
//  ViewController.swift
//  HW5 - Calculator
//
//  Created by Mehmet Tırpan on 7.03.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!

    var currentNumber : Double = 0
    var preNumber : Double = 0
    var operation: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = "0"
        resultLabel.lineBreakMode = .byTruncatingHead // Metnin etiket sınırlarını aşması durumunda en son yazılan metnin arkaplana gitmesini sağlar

    }


    @IBAction func zeroButton(_ sender: Any) {
        if resultLabel.text == "0" {
            resultLabel.text = "0"
        }else{
            resultLabel.text = resultLabel.text! + "0"
        }
    }
    
    @IBAction func doubleZeroButton(_ sender: Any) {
        if resultLabel.text == "0" {
            resultLabel.text = "0"
        }else{
            resultLabel.text = resultLabel.text! + "00"
        }
    }
    
    @IBAction func oneButton(_ sender: Any) {
        if resultLabel.text == "0" {
            resultLabel.text = "1"
        }else{
            resultLabel.text = resultLabel.text! + "1"
        }
    }
    
    @IBAction func twoButton(_ sender: Any) {
        if resultLabel.text == "0" {
            resultLabel.text = "2"
        }else{
            resultLabel.text = resultLabel.text! + "2"
        }
    }
    
    @IBAction func threeButton(_ sender: Any) {
        if resultLabel.text == "0" {
            resultLabel.text = "3"
        }else{
            resultLabel.text = resultLabel.text! + "3"
        }
    }
    
    @IBAction func fourButton(_ sender: Any) {
        if resultLabel.text == "0" {
            resultLabel.text = "4"
        }else{
            resultLabel.text = resultLabel.text! + "4"
        }
    }
    
    @IBAction func fiveButton(_ sender: Any) {
        if resultLabel.text == "0" {
            resultLabel.text = "5"
        }else{
            resultLabel.text = resultLabel.text! + "5"
        }
    }
    
    @IBAction func sixButton(_ sender: Any) {
        if resultLabel.text == "0" {
            resultLabel.text = "6"
        }else{
            resultLabel.text = resultLabel.text! + "6"
        }
    }
    
    @IBAction func sevenButton(_ sender: Any) {
        if resultLabel.text == "0" {
            resultLabel.text = "7"
        }else{
            resultLabel.text = resultLabel.text! + "7"
        }
    }
    
    @IBAction func eightButton(_ sender: Any) {
        if resultLabel.text == "0" {
            resultLabel.text = "8"
        }else{
            resultLabel.text = resultLabel.text! + "8"
        }
    }
    
    @IBAction func nineButton(_ sender: Any) {
        if resultLabel.text == "0" {
            resultLabel.text = "9"
        }else{
            resultLabel.text = resultLabel.text! + "9"
        }
    }
    
    @IBAction func commaButton(_ sender: Any) {
        resultLabel.text = resultLabel.text! + "."
    }
    
    @IBAction func sumButton(_ sender: Any) {
        operation = "+"
        preNumber = Double(resultLabel.text!)!
        resultLabel.text = "0"
    }
    
    @IBAction func subButton(_ sender: Any) {
        operation = "-"
        preNumber = Double(resultLabel.text!)!
        resultLabel.text = "0"
    }
    
    @IBAction func multiplyButton(_ sender: Any) {
        operation = "x"
        preNumber = Double(resultLabel.text!)!
        resultLabel.text = "0"
    }
    
    @IBAction func partitionButton(_ sender: Any) {
        operation = "/"
        preNumber = Double(resultLabel.text!)!
        resultLabel.text = "0"
    }
    
    @IBAction func percentButton(_ sender: Any) {
        operation = "%"
        preNumber = Double(resultLabel.text!)!
        currentNumber = preNumber / 100
        resultLabel.text = String(currentNumber)
    }
    
    @IBAction func PNButton(_ sender: Any) {
        operation = "PN"
        preNumber = Double(resultLabel.text!)!
        currentNumber = preNumber * (-1)
        resultLabel.text = String(currentNumber)
    }
    
    
    @IBAction func equalButton(_ sender: Any) {
        currentNumber = Double(resultLabel.text!)!
        
        switch operation {
        case "+":
            resultLabel.text = String(preNumber + currentNumber)
        case "-":
            resultLabel.text = String(preNumber - currentNumber)
        case "x":
            resultLabel.text = String(preNumber * currentNumber)
        case "/":
            resultLabel.text = String(preNumber / currentNumber)
        default:
            break
        }

    }
    
    @IBAction func clearButton(_ sender: Any) {
        resultLabel.text = "0"
        preNumber = 0
        currentNumber = 0
    }
    
    
    
}

