//
//  ViewController.swift
//  SimpleCalc
//
//  Created by iGuest on 4/17/17.
//  Copyright © 2017 iGuest. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    public var text = ""
    public var equation = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let history = segue.destination as! HistoryViewController
        history.equationHistory.text! = equation + "\n"
    }


    @IBAction func number0(_ sender: Any) {
        text += "0"
        display.text = text
    }
    
    @IBAction func number1(_ sender: Any) {
        text += "1"
        display.text = text
    }

    @IBAction func number2(_ sender: Any) {
        text += "2"
        display.text = text
    }
    
    @IBAction func number3(_ sender: Any) {
        text += "3"
        display.text = text
    }
    
    @IBAction func number4(_ sender: Any) {
        text += "4"
        display.text = text
    }
    
    @IBAction func number5(_ sender: Any) {
        text += "5"
        display.text = text
    }
    
    @IBAction func number6(_ sender: Any) {
        text += "6"
        display.text = text
    }
    
    @IBAction func number7(_ sender: Any) {
        text += "7"
        display.text = text
    }
    
    @IBAction func number8(_ sender: Any) {
        text += "8"
        display.text = text
    }
    
    @IBAction func number9(_ sender: Any) {
        text += "9"
        display.text = text
    }

    @IBAction func clear(_ sender: Any) {
        text = ""
        display.text = text
    }
    
    @IBAction func addButton(_ sender: Any) {
        text += " + "
        display.text = text
    }
    
    @IBAction func subtractButton(_ sender: Any) {
        text += " - "
        display.text = text
    }
    
    @IBAction func multiplyButton(_ sender: Any) {
        text += " * "
        display.text = text
    }
    
    @IBAction func divideButton(_ sender: Any) {
        text += " / "
        display.text = text
    }
    
    @IBAction func modButton(_ sender: Any) {
        text += " % "
        display.text = text
    }
    
    @IBAction func countButton(_ sender: Any) {
        text += " count "
        display.text = text
    }
    
    @IBAction func avgButton(_ sender: Any) {
        text += " avg "
        display.text = text
    }
    
    @IBAction func factButton(_ sender: Any) {
        text += " fact "
        display.text = text
    }
    
    @IBAction func calculateButton(_ sender: Any) {
        var equationArray : Array = text.components(separatedBy: " ")
        var answer = 0
        let left = Int(equationArray[0])
        let operation = String(equationArray[1])
        let right = Int(equationArray[2])
        equation = text
    
        if(operation == "+") {
            answer = left! + right!
            text = " = \(String(answer))"
            display.text = text
        } else if (operation == "-") {
            answer = left! - right!
            text = "\(String(answer))"
            display.text = text
        } else if (operation == "*") {
            answer = left! * right!
            text = "\(String(answer))"
            display.text = text
        } else if (operation == "/") {
            answer = left! / right!
            text = "\(String(answer))"
            display.text = text
        } else if (operation == "%") {
            answer = left! % right!
            text = "\(String(answer))"
            display.text = text
        } else if (operation == "count") {
            var numbers = display.text!.components(separatedBy: " count ")
            var countArray: [Int] = []
            for i in 0...numbers.count - 1 {
                countArray.append(Int(numbers[i])!)
            }
            text = "\(String(countArray.count))"
            display.text = text
        } else if (operation == "avg") {
            var numbers = display.text!.components(separatedBy: " avg ")
            var total = 0;
            for i in 0...numbers.count - 1 {
                total += Int(numbers[i])!
            }
            answer = total / numbers.count
            text = "\(String(answer))"
            display.text = text
        } else { //factorial operation
            let fact = Int(left!);
            var ans = 1;
            for integer in 1...fact {
                answer = ans * integer;
            }
            text = "\(String(answer))"
            display.text = text
        }
        equation += " = \(answer)"
    }
}

