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
    var errorFlag:Int = 0
    var floatingPointCount:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userInputEquationField.text = "";
        answerField.text = "0"
       
    }

    @IBAction func ClearAllBtn(_ sender: Any) {
        userInputEquationField.text = ""
        answerField.text = "0"
        userInputEquation = ""
        floatingPointCount = 0
        errorFlag = 0
    }
    // + / - positiive value or negative value (need to handle later)
    @IBAction func precisionBtn(_ sender: Any) {
        if(!checkFloatingPoints()){
        let equation:String = String(userInputEquationField.text!);
        if(equation != ""){
            if(equation.last! == "-" || equation.last! == "%"){
                answerField.text = "Syntax error"
            }else{
                let decimalCharacters = CharacterSet.decimalDigits
                let lastCharacter = String(equation.last!)
                let decimalRange = lastCharacter.rangeOfCharacter(from: decimalCharacters)
                if(decimalRange == nil){
                    userInputEquationField.text = String(userInputEquationField.text!) + "-"
                    userInputEquation = String(userInputEquationField.text!)
                }
          
            }
        }else{
            userInputEquationField.text = String(userInputEquationField.text!) + "-"
            userInputEquation = String(userInputEquationField.text!)
        }
       }

    }
    
    // handle later
    @IBAction func precentageBtn(_ sender: Any) {
        if(!checkAlreadyExisitOperator()){
        let equation:String = String(userInputEquationField.text!);
        if(equation != ""){
            if(equation.last! == " "){
                answerField.text = "Syntax error"
            }else{
                userInputEquation = String(userInputEquationField.text!) + "%"
                userInputEquationField.text = String(userInputEquationField.text!) + "%"
               
            }
        }else{
            userInputEquation = String(userInputEquationField.text!) + " % "
            userInputEquationField.text = String(userInputEquationField.text!) + "%"
           
        }
            
        }
    }
    @IBAction func backBtn(_ sender: Any) {
        let equation:String = String(userInputEquationField.text!);
        
        if(equation.last! == " "){
            userInputEquationField.text = String(userInputEquationField.text!.dropLast(3))
            userInputEquation = String(userInputEquationField.text!)
        }else{
            userInputEquationField.text = String(userInputEquationField.text!.dropLast())
            userInputEquation = String(userInputEquationField.text!)
        }

    }
    @IBAction func divisionBtn(_ sender: Any) {
        
        if(!checkAlreadyExisitOperator()){
        let equation:String = String(userInputEquationField.text!);
        if(equation != ""){
            if(equation.last! == " "){
                answerField.text = "Syntax error"
            }else{
                userInputEquationField.text = String(userInputEquationField.text!) + " / "
                userInputEquation = String(userInputEquationField.text!)
            }
        }else{
            userInputEquationField.text = String(userInputEquationField.text!) + " / "
            userInputEquation = String(userInputEquationField.text!)
        }
        }
        
    }
    @IBAction func multiplyBtn(_ sender: Any) {
        if(!checkAlreadyExisitOperator()){
        let equation:String = String(userInputEquationField.text!);
        if(equation != ""){
            if(equation.last! == " "){
                answerField.text = "Syntax error"
            }else{
                userInputEquation = String(userInputEquationField.text!) + " x "
                userInputEquationField.text = String(userInputEquationField.text!) + " x "
            }
        }else{
            userInputEquation = String(userInputEquationField.text!) + " x "
            userInputEquationField.text = String(userInputEquationField.text!) + " x "
        }
        }
       
    }
    @IBAction func addBtn(_ sender: Any) {
        if(!checkAlreadyExisitOperator()){
        let equation:String = String(userInputEquationField.text!);
        if(equation != ""){
            if(equation.last! == " "){
                answerField.text = "Syntax error"
            }else{
                userInputEquationField.text = String(userInputEquationField.text!) + " + "
                userInputEquation = String(userInputEquationField.text!)
            }
        }else{
            userInputEquationField.text = String(userInputEquationField.text!) + " + "
            userInputEquation = String(userInputEquationField.text!)
        }
            
        }
    }
    @IBAction func minuBtn(_ sender: Any) {
        if(!checkAlreadyExisitOperator()){
            let equation:String = String(userInputEquationField.text!);
            if(equation != ""){
                if(equation.last! == " "){
                    answerField.text = "Syntax error"
                }else{
                    userInputEquationField.text = String(userInputEquationField.text!) + " - "
                    userInputEquation = String(userInputEquationField.text!)
                }
            }else{
                userInputEquationField.text = String(userInputEquationField.text!) + " - "
                userInputEquation = String(userInputEquationField.text!)
            }
        }
      
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
        let equation:String = String(userInputEquationField.text!);
        if(equation != ""){
            if(equation.last! == " " || !equation.last!.isNumber){
                floatingPointCount = 0
            }
            if(floatingPointCount == 0){
                floatingPointCount = 1
                userInputEquationField.text = String(userInputEquationField.text!) + "."
                userInputEquation = String(userInputEquationField.text!)
            }
        }else{
            floatingPointCount = 1
            userInputEquationField.text = String(userInputEquationField.text!) + "."
            userInputEquation = String(userInputEquationField.text!)
        }
       
        
    }
    
    // display the answer (need error handling)
    @IBAction func equalBtn(_ sender: Any){
        let preEquation:String = String(userInputEquation).replacingOccurrences(of: " x ", with: " * ", options: .literal, range: nil)
        let lastEquation:String = String(preEquation).replacingOccurrences(of: "%", with: " / 100.0", options: .literal, range: nil)
        print(lastEquation)
        if(lastEquation == ""){
            userInputEquationField.text = ""
            answerField.text = "0"
            userInputEquation = ""
        }else if(lastEquation.first! == " " || lastEquation.last! == " " || lastEquation.last! == "-" || lastEquation.last! == "."){
            userInputEquationField.text = ""
            answerField.text = "Syntax error"
            userInputEquation = ""
        }else{
            let expn =  NSExpression(format:lastEquation)
            guard let totalValue = expn.expressionValue(with: nil, context: nil) as? Double else{
                return
            }
            answerField.text = String(describing: totalValue)
        }
        
//            answerField.text = "Syntax error"
        
        
    }
    
    func checkAlreadyExisitOperator()->Bool{
        let equation:String = String(userInputEquationField.text!);
        if(equation != ""){
            if(equation.last == " "){
                return true
            }else if(equation.last == "."){
                return true
            }else if(equation.last == "-"){
               return true
            }else{
                return false
            }
        }else{
            return false
        }
    }
    
    func checkFloatingPoints()->Bool{
        let equation:String = String(userInputEquationField.text!);
        if(equation != ""){
           if(equation.last == "."){
                return true
            }else{
               return false
            }
        }else{
            return false
        }
    }
    
    
}

