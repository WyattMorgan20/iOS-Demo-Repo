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
    }

    @IBAction func prevBtnClicked(_ sender: UIButton) {
        
    }
    
    @IBAction func nextBtnClicked(_ sender: UIButton) {
        
    }
    
}

