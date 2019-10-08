//
//  ViewController.swift
//  TipCalculatorV1
//
//  Created by Chakane Shegog on 9/26/19.
//  Copyright © 2019 Chakane Shegog. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipPercentage: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        // Additional setup
    }
 
    @IBOutlet var totalAmount: [UILabel]!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Disposes resources which can be recreated
    }
    
    @IBAction func onTap(_ sender: Any){
        // hides keyboard when user taps percentage
        view.endEditing(true)
        
    }
    
    @IBAction func calculateTip(_ sender: Any){
        let bill = Double(billField.text!) ?? 0
        //let tip = bill * 0.2
        let tipPercentages = [0.10, 0.15, 0.2]
       
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    

 
  
}

