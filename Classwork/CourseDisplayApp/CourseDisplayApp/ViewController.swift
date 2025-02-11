//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Morgan,Wyatt J on 2/11/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewOL: UIImageView!
    
    @IBOutlet weak var crsNumOL: UILabel!
    
    @IBOutlet weak var crsTitleOL: UILabel!
    
    @IBOutlet weak var semOfferedOL: UILabel!
    
    @IBOutlet weak var prevBttnOL: UIButton!
    
    @IBOutlet weak var nextBtnOL: UIButton!
    
    let courses = [["img01", "44555", "Network Security", "Fall 2025"],
                   ["img02", "44643", "Mobile Computing", "Summer 2025"],
                   ["img03", "44222", "Streaming Data", "Spring 2026"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Update course details (img, crsNum, crsTitle, semOffered) with the first element in the array
        imageViewOL.image = UIImage(named: courses[0][0])
        crsNumOL.text = courses[0][1]
        crsTitleOL.text = courses[0][2]
        semOfferedOL.text = courses[0][3]
        
        // Previous button is disabled
        prevBttnOL.isEnabled = false
        
        // Next button is enabled
        nextBtnOL.isEnabled = true
    }

    @IBAction func prevBtnClicked(_ sender: UIButton) {
        
    }
    
    @IBAction func nextBtnClicked(_ sender: UIButton) {
        // on click moves to next view
        
    }
    
}

