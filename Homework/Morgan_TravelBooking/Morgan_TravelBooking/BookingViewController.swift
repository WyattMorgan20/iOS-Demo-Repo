//
//  ViewController.swift
//  Morgan_TravelBooking
//
//  Created by Wyatt Morgan on 4/16/25.
//

import UIKit

class BookingViewController: UIViewController {
    
    @IBOutlet weak var travellerNameOL: UITextField!
    
    @IBOutlet weak var noOfTravellersOL: UITextField!
    
    @IBOutlet weak var cabinTypeOL: UITextField!
    
    var trvlName = ""
    var noOfTravellers = 0
    var cabinType = ""
    var totalCost: Int = 0
    var imgName = ""
    var result = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func bookNowButton(_ sender: UIButton) {
        trvlName = travellerNameOL.text!
        noOfTravellers = Int(noOfTravellersOL.text!)!
        cabinType = cabinTypeOL.text!
        
        if cabinType.lowercased() == "economy" {
            totalCost = noOfTravellers * 150
            imgName = "economyIMG"
            result = "Enjoy your Economy Trip!"
        }
        else if cabinType.lowercased() == "luxury" {
            totalCost = noOfTravellers * 250
            imgName = "luxuryIMG"
            result = "Enjoy your Luxury Trip!"
        }
        else {
            totalCost = 0
            imgName = "invalidIMG"
            result = "Please select a valid class"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition =  segue.identifier
        if transition == "resultSegue" {
            // create the destination as ResultVC
            var destination = segue.destination as! MorganResultViewController
            
            destination.cabinTypeOT = cabinType
            destination.imgNameOT = imgName
            destination.trvlNameOT = trvlName
            destination.noOfTravellersOT = noOfTravellers
            destination.resultOT = result
            destination.totalCostOT = totalCost
        }
    }
    
}

