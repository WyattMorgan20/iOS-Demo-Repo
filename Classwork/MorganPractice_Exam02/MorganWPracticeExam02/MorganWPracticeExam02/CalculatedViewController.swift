//
//  CalculatedViewController.swift
//  MorganWPracticeExam02
//
//  Created by Morgan,Wyatt J on 4/1/25.
//

import UIKit

class CalculatedViewController: UIViewController {

    @IBOutlet weak var activityResultOT: UILabel!
    
    @IBOutlet weak var durationResultOT: UILabel!
    
    @IBOutlet weak var cpmResultOT: UILabel!
    
    @IBOutlet weak var totalCaloriesBurnedOT: UILabel!
    
    @IBOutlet weak var imageOT: UIImageView!
    
    var enteredActivity = ""
    var enteredDuration = 0.0
    var enteredCPM = 0.0
    var resultTotalCaloriesBurned = 0.0
    var resultImageName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        activityResultOT.text = activityResultOT.text! + String(enteredActivity)
        
        durationResultOT.text = durationResultOT.text! + String(enteredDuration)
        
        cpmResultOT.text = cpmResultOT.text! + String(enteredCPM)
        
        totalCaloriesBurnedOT.text = totalCaloriesBurnedOT.text! + String(resultTotalCaloriesBurned)
        
        imageOT.image = UIImage(named: resultImageName)
        
        imageOT.alpha = 0.0
        UIView.animate(withDuration: 1.5){
            self.imageOT.alpha = 1.0
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
