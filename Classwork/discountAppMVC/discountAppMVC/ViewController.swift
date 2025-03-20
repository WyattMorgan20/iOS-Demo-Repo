//
//  ViewController.swift
//  discountAppMVC
//
//  Created by Morgan,Wyatt J on 3/20/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountOL: UITextField!
    
    @IBOutlet weak var discountOL: UITextField!
    
    var priceAfterDiscount = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func CalcBTN(_ sender: UIButton) {
        // Read amount and convert its data type to double
        // and asign it to a variable:
        var amount = Double(amountOL.text!)
        
        // Read discount rate and convert its data type to double
        // and asign it to a variable:
        var discountRate = Double(discountOL.text!)
        
        // Calculate price after discount:
        priceAfterDiscount = amount! * (1 - discountRate!/100)
    }
    
    // "same code for every app":
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "ResultSegue" {
            // create the destination as RVC (result view controller):
            var destination = segue.destination as! ResultViewController
            
            // Pass the data:
            destination.amount = amountOL.text!
            destination.discount = discountOL.text!
            destination.priceAfterDiscount = String(priceAfterDiscount)
        }
    }
    
    // to make seecond viewController:
    // click segue line, change identifier to name of choice,
    // make new class of type UIViewController by ctrl + clicking the folder (cocoatouchfile)
    // click viewController, type "R" in custom class box (middle tab)
    

}

