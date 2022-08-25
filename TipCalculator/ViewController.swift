//
//  ViewController.swift
//  TipCalculator
//
//  Created by Annas Waheed on 8/24/22.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet weak var BillInput: UITextField!
    @IBOutlet weak var TipOutput: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var TotalFinalAmount: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func Calculated(_ sender: Any) {
        
        let bill = Double(BillInput.text!) ?? 0
        
        let tipPercent = [0.10, 0.20, 0.30]
        let tip = bill * tipPercent[tipControl.selectedSegmentIndex]
        let final = bill + tip
        
        TipOutput.text = String(format: "$%.2f", tip)
        TotalFinalAmount.text = String(format: "$%.2f", final)
    }
    
}

