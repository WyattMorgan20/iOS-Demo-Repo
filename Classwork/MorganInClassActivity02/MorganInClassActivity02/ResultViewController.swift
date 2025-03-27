//
//  ResultViewController.swift
//  MorganInClassActivity02
//
//  Created by Morgan,Wyatt J on 3/27/25.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet weak var enteredPricipalOT: UILabel!
    
    @IBOutlet weak var enteredroiOT: UILabel!
    
    @IBOutlet weak var enteredTimeOT: UILabel!
    
    @IBOutlet weak var calculatedInterestOT: UILabel!
    
    @IBOutlet weak var categoryOT: UILabel!
    
    @IBOutlet weak var ImageViewOL: UIImageView!
    
    var enteredPrincipal = 0.0
    var enteredROI = 0.0
    var enteredTime = 0.0
    var interest = 0.0
    var categoryMessage = ""
    var categoryImageName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        enteredPricipalOT.text = enteredPricipalOT.text! + " " + String(enteredPrincipal)
        enteredroiOT.text = enteredroiOT.text! + " " + String(enteredROI)
        enteredTimeOT.text = enteredTimeOT.text! + " " + String(enteredTime)
        calculatedInterestOT.text = calculatedInterestOT.text! + " " + String(format: "%0.2f", interest)
        categoryOT.text = categoryOT.text! + " " + categoryMessage
        ImageViewOL.image = UIImage(named: categoryImageName)
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
