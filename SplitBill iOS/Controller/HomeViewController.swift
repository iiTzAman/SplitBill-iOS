//
//  ViewController.swift
//  SplitBill iOS
//
//  Created by Aman Giri on 2024-03-24.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var txtFieldAmount: UITextField!
    @IBOutlet weak var txtSplitNumber: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    var splitCalc = SplitCalculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func onPressCalculate(_ sender: UIButton) {
        splitCalc.amount = Float(txtFieldAmount.text ?? "0.00")
        splitCalc.numOfPerson = Int(txtSplitNumber.text ?? "1")
        splitCalc.calculateSplitAmount()
        
        performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    @IBAction func onPressStepper(_ sender: UIStepper) {
        txtSplitNumber.text = String(format: "%.0f", sender.value)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.splitAmount = splitCalc.splitAmount
            destinationVC.splitNumber = splitCalc.numOfPerson
        }
    }
}

