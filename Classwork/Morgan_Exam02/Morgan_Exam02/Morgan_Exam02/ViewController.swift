//
//  ViewController.swift
//  Morgan_Exam02
//
//  Created by Morgan,Wyatt J on 4/3/25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var goalTypeOT: UITextField!
    
    @IBOutlet weak var targetAmtOT: UITextField!
    
    @IBOutlet weak var interestRateOT: UITextField!
    
    @IBOutlet weak var timePeriodOT: UITextField!
    
    @IBOutlet weak var calculateSavingsBTN: UIButton!
    
    @IBOutlet weak var resetBTN: UIButton!
    
    var goalType = ""
    var targetAMT = 0.0
    var interestRate = 0.0
    var timePeriod = 0.0
    var imgName = ""
    
    var totalMonths = 0.00
    var monthlyInterestRate = 0.00
    var monthlySavingsPayment = 0.00
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    @IBAction func calculateSavingsBTNClicked(_ sender: UIButton) {
        goalType = goalTypeOT.text!
        targetAMT = Double(targetAmtOT.text!)!
        interestRate = Double(interestRateOT.text!)!
        timePeriod = Double(timePeriodOT.text!)!
        
        totalMonths = timePeriod * 12
        monthlyInterestRate = (interestRate / 100) / 12
        monthlySavingsPayment = targetAMT / ((pow(1 + monthlyInterestRate, totalMonths) - 1) / monthlyInterestRate)
        
        if goalType == "vacation" {
            imgName = "vacation"
        }
        else if goalType == "car" {
            imgName = "car"
        }
        else if goalType == "home" {
            imgName = "home"
        }
        
    }
    
    @IBAction func resetBTNClicked(_ sender: UIButton) {
        goalTypeOT.text = ""
        targetAmtOT.text = ""
        interestRateOT.text = ""
        timePeriodOT.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "resultsSegue" {
            // create the destination as resultVC
            var destination = segue.destination as! ResultsViewController
            
            destination.enteredGoalType = goalType
            destination.enteredTargetAMT = targetAMT
            destination.enteredInterestRate = interestRate
            destination.enteredTimePeriod = timePeriod
            destination.enteredImageName = imgName
            destination.calculatedTotalMonths = totalMonths
            destination.calculatedMonthlyInterestRate = monthlyInterestRate
            destination.calculatedMonthlySavingsPayment = monthlySavingsPayment
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // Reset all input fields
        goalTypeOT.text = ""
        targetAmtOT.text = ""
        interestRateOT.text = ""
        timePeriodOT.text = ""
    }
    
}

