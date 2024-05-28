//
//  ViewController.swift
//  BasicCalculator
//
//  Created by Vishaq Jayakumar on 1/25/24.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var btnAdd: UIButton!
    @IBOutlet weak var btnSubtract: UIButton!
    @IBOutlet weak var btnMultiply: UIButton!
    @IBOutlet weak var btnDivide: UIButton!
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var txtSecondNumber: UITextField!
    @IBOutlet weak var txtFirstNumber: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        btnAdd.addTarget(self, action: #selector(onAddClick), for: .touchUpInside)
        btnSubtract.addTarget(self, action: #selector(onSubtractClick), for: .touchUpInside)
        btnMultiply.addTarget(self, action: #selector(onMultiplyClick), for: .touchUpInside)
        btnDivide.addTarget(self, action: #selector(onDivideClick), for: .touchUpInside)
        txtFirstNumber.keyboardType = .decimalPad
        txtSecondNumber.keyboardType = .decimalPad
//        txtFirstNumber.delegate = self
//        txtSecondNumber.delegate = self
    }
    
    @objc func onAddClick(){
        
        guard let text1 = txtFirstNumber.text, let num1 = Double(text1) else {
                    // Handle invalid input
                    showInvalidAlert()
                    return
                }
        guard let text2 = txtSecondNumber.text, let num2 = Double(text2) else {
                    // Handle invalid input
                    showInvalidAlert()
                    return
                }
        lblResult.text = String(num1 + num2)
    }
    @objc func onSubtractClick(){
        
        guard let text1 = txtFirstNumber.text, let num1 = Double(text1) else {
                    // Handle invalid input
                    showInvalidAlert()
                    return
                }
        guard let text2 = txtSecondNumber.text, let num2 = Double(text2) else {
                    // Handle invalid input
                    showInvalidAlert()
                    return
                }
        lblResult.text = String(num1 - num2)
    }
    @objc func onMultiplyClick(){
        
        guard let text1 = txtFirstNumber.text, let num1 = Double(text1) else {
                    // Handle invalid input
                    showInvalidAlert()
                    return
                }
        guard let text2 = txtSecondNumber.text, let num2 = Double(text2) else {
                    // Handle invalid input
                    showInvalidAlert()
                    return
                }
        lblResult.text = String(num1 * num2)
    }
    @objc func onDivideClick(){
        
        guard let text1 = txtFirstNumber.text, let num1 = Double(text1) else {
                    // Handle invalid input
                    showInvalidAlert()
                    return
                }
        guard let text2 = txtSecondNumber.text, let num2 = Double(text2) else {
                    // Handle invalid input
                    showInvalidAlert()
                    return
                }
        lblResult.text = String(num1 / num2)
    }
    
    func showInvalidAlert(){
            let alert = UIAlertController(
                title: "Error!", message: "Enter a valid number!",
                preferredStyle: .alert
            )
            
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            
            self.present(alert, animated: true)
        }
    


    
}

