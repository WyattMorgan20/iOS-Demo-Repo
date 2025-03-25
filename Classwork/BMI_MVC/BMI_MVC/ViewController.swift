//
//  ViewController.swift
//  BMI_MVC
//
//  Created by Morgan,Wyatt J on 3/25/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var HfeetOL: UITextField!
    
    @IBOutlet weak var HinchesOL: UITextField!
    
    @IBOutlet weak var WlbsOL: UITextField!
    
    var feet = 0
    var inches = 0
    var lbs = 0.0
    var bmi = 0.0
    var categoryname = ""
    var imgname = ""
    var healthadvice = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func CalculateBTN(_ sender: UIButton) {
        // Read input andd convert to integer
        feet = Int(HfeetOL.text!)!
        inches = Int(HinchesOL.text!)!
        lbs = Double(WlbsOL.text!)!
        
        var height = feet * 12 + inches
        bmi = 703 * lbs / Double(height * height)
        
        if bmi < 18.5 {
            categoryname = "Underweight"
            imgname = "underWeight"
            healthadvice = "Eat more protein and healthy fats."
        }
        else if bmi < 25 {
            categoryname = "Normal"
            imgname = "normal"
            healthadvice = "Maintain a balanced diet."
        }
        else if bmi < 30 {
            categoryname = "Overweight"
            imgname = "overWeight"
            healthadvice = "Eat less processed foods and increase physical activity."
        }
        else {
            categoryname = "Obese"
            imgname = "obese"
            healthadvice = "Prioritize weight loss and maintain a healthy lifestyle you fatty bombatty."
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition =  segue.identifier
        if transition == "resultSegue" {
            // create the destination as ResultVC
            var destination = segue.destination as! ResultViewController
            
            destination.enteredhfeet = feet
            destination.enteredhinches = inches
            destination.enteredwlbs = lbs
            destination.bmiResult = bmi
            destination.categoryMessage = categoryname
            destination.healthMessage = healthadvice
            destination.bmiImageName = imgname
        }
    }
    
}

