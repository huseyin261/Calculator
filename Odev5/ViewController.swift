//
//  ViewController.swift
//  Odev5
//
//  Created by Hüseyin Demirkoparan on 18.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var calculatorWorking: UILabel!
    @IBOutlet weak var calculatorResult: UILabel!
    
    var workings:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
    }
    
    func clearAll(){
        workings = ""
        calculatorWorking.text = ""
        calculatorResult.text = ""
    }

    @IBAction func buttonTopla(_ sender: Any) {
        
    }
    
    @IBAction func buttonAC(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func buttonDelete(_ sender: Any) {
        if(!workings.isEmpty){
            workings.removeLast()
            calculatorWorking.text = workings
        }
    }
    
    func addToWorkings(value:String){
        workings = workings + value
        calculatorWorking.text = workings
    }
    
    @IBAction func buttonZero(_ sender: Any) {
        addToWorkings(value: "0")
    }
    
    @IBAction func buttonOne(_ sender: Any) {
        addToWorkings(value: "1")
    }
    
    @IBAction func buttonTwo(_ sender: Any) {
        addToWorkings(value: "2")
    }
    
    @IBAction func buttonThree(_ sender: Any) {
        addToWorkings(value: "3")
    }
    
    @IBAction func buttonFour(_ sender: Any) {
        addToWorkings(value: "4")
    }
    
    @IBAction func buttonFive(_ sender: Any) {
        addToWorkings(value: "5")
    }
    
    @IBAction func buttonSix(_ sender: Any) {
        addToWorkings(value: "6")
    }
    
    @IBAction func buttonSeven(_ sender: Any) {
        addToWorkings(value: "7")
    }
    
    @IBAction func buttonEight(_ sender: Any) {
        addToWorkings(value: "8")
    }
    
    @IBAction func buttonNine(_ sender: Any) {
        addToWorkings(value: "9")
    }
    
    @IBAction func buttonPlus(_ sender: Any) {
        addToWorkings(value: "+")
    }
    
    @IBAction func buttonEqual(_ sender: Any) {
        let expression = NSExpression(format: workings)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatResult(result: result)
        calculatorResult.text = resultString
    }
    func formatResult(result: Double) -> String{
        if(result.truncatingRemainder(dividingBy: 1) == 0){
            return String(format: "%.0f", result)
        }else{
            return String(format: "%.2f", result)
        }
    }
}

