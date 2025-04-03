//
//  ResultsViewController.swift
//  Morgan_Exam02
//
//  Created by Morgan,Wyatt J on 4/3/25.
//

import UIKit

class ResultsViewController: UIViewController {

    
    @IBOutlet weak var goalTypeResultsOT: UILabel!
    
    @IBOutlet weak var targetAmtResultsOT: UILabel!
    
    @IBOutlet weak var enteredInterestRateResultsOT: UILabel!
    
    @IBOutlet weak var calculatedSavingsResultsOT: UILabel!
    
    @IBOutlet weak var imageNameOT: UIImageView!
    
    var enteredGoalType = ""
    var enteredTargetAMT = 0.0
    var enteredInterestRate = 0.0
    var enteredTimePeriod = 0.0
    var enteredImageName = ""
    
    var calculatedTotalMonths = 0.00
    var calculatedMonthlyInterestRate = 0.00
    var calculatedMonthlySavingsPayment = 0.00
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        goalTypeResultsOT.text = goalTypeResultsOT.text! + String(enteredGoalType)
        targetAmtResultsOT.text = targetAmtResultsOT.text! + String(enteredTargetAMT)
        enteredInterestRateResultsOT.text = enteredInterestRateResultsOT.text! + String(enteredInterestRate)
        calculatedSavingsResultsOT.text = calculatedSavingsResultsOT.text! + String(round(100.0 * calculatedMonthlySavingsPayment) / 100.0)
        
        imageNameOT.image = UIImage(named: enteredImageName)
        imageNameOT.alpha = 0.0
        UIView.animate(withDuration: 1.5) {
            self.imageNameOT.alpha = 1.0
        }
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
