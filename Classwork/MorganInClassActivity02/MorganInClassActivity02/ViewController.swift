//
//  ViewController.swift
//  MorganInClassActivity02
//
//  Created by Morgan,Wyatt J on 3/27/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var principalOT: UITextField!
    
    @IBOutlet weak var roiOT: UITextField!
    
    @IBOutlet weak var timeOT: UITextField!
    
    var principal = 0.0
    var roi = 0.0
    var time = 0.0
    var interest = 0.0
    var categoryName = ""
    var imgName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func CalculateBTN(_ sender: UIButton) {
        // Read input and convert to integer
        principal = Double(principalOT.text!)!
        roi = Double(roiOT.text!)!
        time = Double(timeOT.text!)!
        
        interest = round((principal * roi * time) / 100)
        
        if interest < 100 {
            categoryName = "Low"
            imgName = "lowInterest"
        }
        else if interest >= 100 && interest < 500 {
            categoryName = "Medium"
            imgName = "middleInterest"
        }
        else if interest >= 500 {
            categoryName = "High"
            imgName = "highInterest"
        }
        else{
            categoryName = "Invalid"
            imgName = ""
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "resultSegue"{
            // create the destination as ResultViewController
            var destination = segue.destination as! ResultViewController
            
            destination.enteredPrincipal = principal
            destination.enteredROI = roi
            destination.enteredTime = time
            destination.interest = interest
            destination.categoryMessage = categoryName
            destination.categoryImageName = imgName
        }
    }
    
}

