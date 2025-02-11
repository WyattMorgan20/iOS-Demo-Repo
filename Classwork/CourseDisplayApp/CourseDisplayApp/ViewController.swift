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
    
    var imageIndex = 0
    
    let courses = [["img01", "44555", "Network Security", "Fall 2025"],
                   ["img02", "44643", "Mobile Computing", "Summer 2025"],
                   ["img03", "44222", "Streaming Data", "Spring 2026"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Update course details (img, crsNum, crsTitle, semOffered) with the first element in the array
        updateCourseDetails(imageIndex)
        
        // Previous button is disabled
        prevBttnOL.isEnabled = false
        
        // Next button is enabled
        nextBtnOL.isEnabled = true
    }

    @IBAction func prevBtnClicked(_ sender: UIButton) {
        // decrement the image
        imageIndex -= 1
        
        // update the course details (img, crsNum, crsTitle, semOffered)
        updateCourseDetails(imageIndex)
        
        // next button should be enabled
        nextBtnOL.isEnabled = true
        
        // check if the element is at the beginning of the array
        // if so, prev button should be disabled
        if(imageIndex == 0){
            prevBttnOL.isEnabled = false
        }
    }
    
    @IBAction func nextBtnClicked(_ sender: UIButton) {
        // increment the image
        imageIndex += 1
        
        // update the course details (img, crsNum, crsTitle, semOffered)
        updateCourseDetails(imageIndex)
        
        // previous button should be enabled
        prevBttnOL.isEnabled = true
        
        // check if the element is at the end of the array
        // if so, next button should be disabled
        if(imageIndex == courses.count - 1){
            nextBtnOL.isEnabled = false
        }
    }
    
    func updateCourseDetails(_ imageNumber: Int){
        // update the course details (img, crsNum, crsTitle, semOffered)
        imageViewOL.image = UIImage(named: courses[imageIndex][0])
        crsNumOL.text = courses[imageIndex][1]
        crsTitleOL.text = courses[imageIndex][2]
        semOfferedOL.text = courses[imageIndex][3]
    }
    
}

