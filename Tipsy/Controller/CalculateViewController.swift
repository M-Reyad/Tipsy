//
//  CalculateViewController.swift
//  Tipsy
//
//  Created by Mohamed Reyad on 10/2/21.
//

import UIKit

class CalculateViewController: UIViewController {
    
    //Class Properities to be initialized by user
    @IBOutlet weak var billTotalValue: UITextField!
    @IBOutlet weak var splitLabelValue: UILabel!
    @IBOutlet weak var stepperValue: UIStepper!
    
    //Tip Selection Buttons
    @IBOutlet weak var zeroButtonPressed: UIButton!
    @IBOutlet weak var tenButtonPressed: UIButton!
    @IBOutlet weak var twentyButtonPressed: UIButton!
    var billData = BillData()
    //Class Properities to be initialized during runtime
//    var tipPercentage : Float = 0.0 //To be converted in a struct to an Optional!!
//    var split : Int = 0
//    var totalBill : Float = 0.0
//    var totalBillPerPerson : Float = 0.0
    
    //Class Methods
    @IBAction func selectTipPressed(_ sender: UIButton) {
        
        billTotalValue.endEditing(true)
        billData.calcualteTipPercentage(sender.currentTitle!)
        
        switch sender.currentTitle! {
        case "0%":
            zeroButtonPressed.isSelected = true
            tenButtonPressed.isSelected = false
            twentyButtonPressed.isSelected = false
        case "10%":
            zeroButtonPressed.isSelected = false
            tenButtonPressed.isSelected = true
            twentyButtonPressed.isSelected = false
        case "20%":
            zeroButtonPressed.isSelected = false
            tenButtonPressed.isSelected = false
            twentyButtonPressed.isSelected = true
        default:
            zeroButtonPressed.isSelected = false
            tenButtonPressed.isSelected = true
            twentyButtonPressed.isSelected = false
        }
    }
    

    @IBAction func stepperValuePressed(_ sender: UIStepper) {
        billData.split = Int(stepperValue.value)
        splitLabelValue.text = String(billData.split!)
        print(billData.split!)
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let totalBill = Float(billTotalValue.text ?? "0.0")!
        billData.calculateTotalBillPerPerson(totalBill, billData.split!)
        self.performSegue(withIdentifier: "showResult", sender: self)

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResult"{
            let secondVC = segue.destination as! ResultViewController
            secondVC.totalValue = billData.totalBillPerPerson ?? 0.0
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

//
//
}

