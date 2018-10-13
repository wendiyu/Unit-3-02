

// Created on: October-11-2018
// Created by: Wendi Yu
// Created for: ICS3U
// This program is the UIKit solution for creating the number guessing game 
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let NUMBERTOGUESS : Int = Int(arc4random_uniform(10) + 1)
    // generate random number between 1 and 10
    
    //let guessNumberLable = UILabel()
    // comment out the checking var
    
    let questionLable = UILabel()
    let numberTextField = UITextField()
    let answerLable = UILabel()
    let answerButton = UIButton()
    
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        questionLable.text = "Enter number between 1 and 10."
        view.addSubview(questionLable)
        questionLable.translatesAutoresizingMaskIntoConstraints = false
        questionLable.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        questionLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        
        numberTextField.borderStyle = UITextBorderStyle.roundedRect
        numberTextField.placeholder = "Put a whole number    "
        view.addSubview(numberTextField)
        numberTextField.translatesAutoresizingMaskIntoConstraints = false
        numberTextField.topAnchor.constraint(equalTo: questionLable.bottomAnchor, constant: 5).isActive = true
        numberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerButton.setTitle("Check", for: .normal)
        answerButton.setTitleColor(.blue, for: .normal)
        answerButton.addTarget(self, action: #selector(checkNumberGuessing), for: .touchUpInside)
        view.addSubview(answerButton)
        answerButton.translatesAutoresizingMaskIntoConstraints = false
        answerButton.topAnchor.constraint(equalTo: numberTextField.bottomAnchor, constant: 10).isActive = true
        answerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerLable.text = nil
        view.addSubview(answerLable)
        answerLable.translatesAutoresizingMaskIntoConstraints = false
        answerLable.topAnchor.constraint(equalTo: answerButton.bottomAnchor, constant: 20).isActive = true
        answerLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        // check the function working or not 
        //guessNumberLable.text = " The number is: \(NUMBERTOGUESS)  "
        //view.addSubview(guessNumberLable)
        //guessNumberLable.translatesAutoresizingMaskIntoConstraints = false
        //guessNumberLable.topAnchor.constraint(equalTo: answerLable.topAnchor, constant: 20).isActive = true
        //questionLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
    }
    
    @objc func checkNumberGuessing() {
        // show answers 
        
        let numberEnter : Int =  Int(numberTextField.text!)!
        
        if numberEnter > 10 || numberEnter <= 0 {
            answerLable.text = " Please, put a valid number! "
        }
        else if numberEnter != NUMBERTOGUESS {
            answerLable.text = "Sorry, the correct number is: \(NUMBERTOGUESS) "
        }
        else {
            answerLable.text = "You got it! The correct number is: \(NUMBERTOGUESS) "
        }
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
