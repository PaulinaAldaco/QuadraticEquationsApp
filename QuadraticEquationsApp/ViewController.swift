//
//  ViewController.swift
//  QuadraticEquationsApp
//
//  Created by user193919 on 8/31/21.
//

import UIKit

class ViewController: UIViewController {
    
    // Input text fields
    @IBOutlet weak var aTextField: UITextField!
    @IBOutlet weak var bTextField: UITextField!
    @IBOutlet weak var cTextField: UITextField!
    
    // Output text fields
    @IBOutlet weak var rootOneTextField: UITextField!
    @IBOutlet weak var rootTwoTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // Button
    @IBAction func solve(_ sender: UIButton) {

        // Check that values have been entered
        if let a = aTextField.text {
            if !a.isEmpty {
                if let b = bTextField.text {
                    if !b.isEmpty {
                        if let c = cTextField.text {
                            if !c.isEmpty {
                                
                                // Check that a is not 0 (to make sure the
                                // equation is quadratic)
                                if (Float(a) != 0) {
                                    // Create equation
                                    let equation: Equation = Equation(a: Float(a)!, b: Float(b)!, c: Float(c)!)
                                    // Create calculator
                                    let calculator: Calculator = Calculator()
                                    // Get solution
                                    let solution: Solution = calculator.solveEquation(equation: equation)
                                                        
                                    // Show results
                                    rootOneTextField.text = solution.rootOne
                                    rootTwoTextField.text = solution.rootTwo
                                }
                                else {
                                    // Show alert
                                    show_alert(title: "Not a quadratic equation", message: "Please enter a non zero value for 'a'")
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    // Function to show alerts
    public func show_alert(title: String, message: String)  {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}

