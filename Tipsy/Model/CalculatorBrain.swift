//
//  CalculatorBrain.swift
//  Tipsy
//
//  Created by Mohamed Reyad on 10/2/21.
//

import Foundation
struct BillData {
    var tipPercentage : Float?
    var split : Int?
    var totalBill : Float?
    var totalBillPerPerson : Float?
    
     mutating func calcualteTipPercentage(_ sender : String) {
        switch sender {
        case "0%":
            tipPercentage = 0
        case "10%":
            tipPercentage = 0.1
        case "20%":
            tipPercentage = 0.2
        default:
            tipPercentage = 0.1
        }
        print(tipPercentage ?? "0.0")
    }
    mutating func calculateTotalBillPerPerson(_ totalBill: Float,_ split: Int){
    totalBillPerPerson = (totalBill*(1+tipPercentage!))/Float(split)
    }
}
