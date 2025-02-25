//
//  ViewController.swift
//  Morgan_Exam01
//
//  Created by Morgan,Wyatt J on 2/25/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var PMtwoOT: UITextField!
    
    @IBOutlet weak var PMtenOT: UITextField!
    
    @IBOutlet weak var imageOT: UIImageView!
    
    @IBOutlet weak var outputOT: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func checkQualityBTNClicked(_ sender: UIButton) {
        guard let PM25 = Double(PMtwoOT.text!), let PM10 = Double(PMtenOT.text!) else {
            return
        }
        
        var aqc = round(10 * (PM25 + PM10) / 2) / 10
        var aqcStatus = ""
        
        if aqc > 0 && aqc <= 500 {
            if aqc < 50 {
                imageOT.image = UIImage(named: "Best")
                aqcStatus = "Best quality air👍🏻"
                outputOT.text = "The AQC value is \(aqc)\nThis is considered to be\n\(aqcStatus)."
                outputOT.numberOfLines = 0
            }
            else if 50 <= aqc && aqc < 100 {
                imageOT.image = UIImage(named: "Moderate")
                aqcStatus = "Moderate quality air🙁"
                outputOT.text = "The AQC value is \(aqc)\nThis is considered to be\n\(aqcStatus)."
                outputOT.numberOfLines = 0
            }
            else if 100 <= aqc {
                imageOT.image = UIImage(named: "Poor")
                aqcStatus = "Poor quality air😢"
                outputOT.text = "The AQC value is \(aqc)\nThis is considered to be\n\(aqcStatus)."
                outputOT.numberOfLines = 0
            }
            else{
                outputOT.text = "Please enter the input values for PM2.5 and PM10."
            }
        }
        else{
            outputOT.text = "Please enter the input values for PM2.5 and PM10."
        }
        
        if PMtwoOT == nil || PMtenOT == nil{
            outputOT.text = "Please enter the input values for PM2.5 and PM10."
        }
    }
    
    @IBAction func resetBTNClicked(_ sender: UIButton) {
        PMtwoOT.text = ""
        PMtenOT.text = ""
        outputOT.text = ""
        imageOT.image = UIImage(named: "")
    }
}


