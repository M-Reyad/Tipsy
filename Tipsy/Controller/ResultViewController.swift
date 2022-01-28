//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Mohamed Reyad on 10/2/21.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var totalPerPersonValue: UILabel!
//    @IBOutlet weak var finalSentence: UILabel!
    
    var totalValue : Float = 0.0
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        totalPerPersonValue.text = String(totalValue)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
