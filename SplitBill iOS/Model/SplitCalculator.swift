//
//  SplitCalculator.swift
//  SplitBill iOS
//
//  Created by Aman Giri on 2024-03-24.
//

import UIKit

struct SplitCalculator{
    var amount: Float?
    var numOfPerson: Int?
    var splitAmount: Float?
    
    mutating func calculateSplitAmount() {
        if let amt = amount, let noPerson = numOfPerson{
            splitAmount = (amt/Float(noPerson))
        }
    }
}
