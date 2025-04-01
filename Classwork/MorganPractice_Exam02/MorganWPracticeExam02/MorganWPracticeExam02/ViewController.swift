//
//  ViewController.swift
//  MorganWPracticeExam02
//
//  Created by Morgan,Wyatt J on 4/1/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var activityOT: UITextField!
    
    @IBOutlet weak var durationOT: UITextField!
    
    @IBOutlet weak var cpmOT: UITextField!
    
    var activity = ""
    var duration = 0.0
    var caloriesPerMinute = 0.0
    var totalCaloriesBurned = 0.0
    var imgName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func calculateCaloriesBTN(_ sender: UIButton) {
        activity = activityOT.text!
        duration = Double(durationOT.text!)!
        caloriesPerMinute = Double(cpmOT.text!)!
        
        totalCaloriesBurned = duration * caloriesPerMinute
        
        if(activity == "running"){
            imgName = "running"
        }
        else if(activity == "cycling"){
            imgName = "cycling"
        }
        else if(activity == "swimming"){
            imgName = "swimming"
        }
        else{
            imgName = "default"
        }
        
    }
    
    @IBAction func resetBTN(_ sender: UIButton) {
        activityOT.text = ""
        durationOT.text = ""
        cpmOT.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "calculateSegue" {
            // create the destination as CalculatedVC
            var destination = segue.destination as! CalculatedViewController
            
            destination.enteredActivity = activity
            destination.enteredDuration = duration
            destination.enteredCPM = caloriesPerMinute
            destination.resultTotalCaloriesBurned = totalCaloriesBurned
            destination.resultImageName = imgName
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // Reset all input fields
        activityOT.text = ""
        durationOT.text = ""
        cpmOT.text = ""
    }
    
}

