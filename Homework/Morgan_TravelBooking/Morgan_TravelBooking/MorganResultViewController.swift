//
//  MorganResultViewController.swift
//  Morgan_TravelBooking
//
//  Created by Wyatt Morgan on 4/16/25.
//

import UIKit

class MorganResultViewController: UIViewController {
    
    @IBOutlet weak var imageOL: UIImageView!
    
    @IBOutlet weak var travellerNameOL: UILabel!
    
    @IBOutlet weak var noOfTravellersOL: UILabel!
    
    @IBOutlet weak var cabinTypeOL: UILabel!
    
    @IBOutlet weak var totalCostOL: UILabel!
    
    @IBOutlet weak var resultOL: UILabel!
    
    var trvlNameOT = ""
    var noOfTravellersOT = 0
    var cabinTypeOT = ""
    var totalCostOT: Int = 0
    var imgNameOT = ""
    var resultOT = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        imageOL.image = UIImage(named: imgNameOT)
        travellerNameOL.text = travellerNameOL.text! + " " + trvlNameOT
        noOfTravellersOL.text = noOfTravellersOL.text! + " \(noOfTravellersOT)"
        cabinTypeOL.text = cabinTypeOL.text! + " " + cabinTypeOT
        totalCostOL.text = totalCostOL.text! + " " + "$\(totalCostOT)"
        resultOL.text = resultOT
        
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
