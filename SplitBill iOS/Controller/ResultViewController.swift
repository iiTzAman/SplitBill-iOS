//
//  ResultViewController.swift
//  SplitBill iOS
//
//  Created by Aman Giri on 2024-03-24.
//

import UIKit

class ResultViewController: UIViewController {

    var splitAmount: Float?
    var splitNumber: Int?
    
    @IBOutlet weak var lblSplitNumber: UILabel!
    @IBOutlet weak var lblSplitAmount: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblSplitNumber.text = "Split between \(splitNumber ?? 0) people"
        lblSplitAmount.text = "$\(String(format: "%.2f", splitAmount ?? 0))"
    }
    @IBAction func btnGoBackPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
