//
//  ViewController.swift
//  Cromon(calculator app)
//
//  Created by sonal jayawardana on 2021-12-21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answerField: UILabel!
    @IBOutlet weak var userInputEquationField: UILabel!
    
    var userInputEquation:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userInputEquationField.text = "";
        answerField.text = "0"
       
    }

    @IBAction func ClearAllBtn(_ sender: Any) {
        userInputEquationField.text = ""
        answerField.text = "0"
        userInputEquation = ""
    }
    // + / - positiive value or negative value
    @IBAction func precisionBtn(_ sender: Any) {
    }
    
    @IBAction func precentageBtn(_ sender: Any) {
    }
    @IBAction func backBtn(_ sender: Any) {
    }
    @IBAction func divisionBtn(_ sender: Any) {
    }
    @IBAction func multiplyBtn(_ sender: Any) {
    }
    @IBAction func addBtn(_ sender: Any) {
    }
    @IBAction func minuBtn(_ sender: Any) {
    }
  
    @IBAction func number1Btn(_ sender: Any) {
        userInputEquationField.text = String(userInputEquationField.text!) + "1"
        userInputEquation = String(userInputEquationField.text!)
    }
    @IBAction func number2Btn(_ sender: Any) {
        userInputEquationField.text = String(userInputEquationField.text!) + "2"
        userInputEquation = String(userInputEquationField.text!)
    }
    @IBAction func number3Btn(_ sender: Any) {
        userInputEquationField.text = String(userInputEquationField.text!) + "3"
        userInputEquation = String(userInputEquationField.text!)
    }
    @IBAction func number4Btn(_ sender: Any) {
        userInputEquationField.text = String(userInputEquationField.text!) + "4"
        userInputEquation = String(userInputEquationField.text!)
    }
    @IBAction func number5Btn(_ sender: Any) {
        userInputEquationField.text = String(userInputEquationField.text!) + "5"
        userInputEquation = String(userInputEquationField.text!)
    }
    @IBAction func number6Btn(_ sender: Any) {
        userInputEquationField.text = String(userInputEquationField.text!) + "6"
        userInputEquation = String(userInputEquationField.text!)
    }
    @IBAction func number7Btn(_ sender: Any) {
        userInputEquationField.text = String(userInputEquationField.text!) + "7"
        userInputEquation = String(userInputEquationField.text!)
    }
    @IBAction func number8Btn(_ sender: Any) {
        userInputEquationField.text = String(userInputEquationField.text!) + "8"
        userInputEquation = String(userInputEquationField.text!)
    }
    @IBAction func number9Btn(_ sender: Any) {
        userInputEquationField.text = String(userInputEquationField.text!) + "9"
        userInputEquation = String(userInputEquationField.text!)
    }
    @IBAction func number0Btn(_ sender: Any) {
        userInputEquationField.text = String(userInputEquationField.text!) + "0"
        userInputEquation = String(userInputEquationField.text!)
    }
    @IBAction func dotBtn(_ sender: Any) {
        userInputEquationField.text = String(userInputEquationField.text!) + "."
        userInputEquation = String(userInputEquationField.text!)
    }
    
    // display the answer
    @IBAction func equalBtn(_ sneder: Any){
        
    }
}

