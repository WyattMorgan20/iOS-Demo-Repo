//
//  ViewController.swift
//  Morgan_SearchApp
//
//  Created by Wyatt Morgan on 3/31/25.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var searchTextField: UITextField!

    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var topicInfoText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func searchButtonAction(_ sender: UIButton) {
        AudioServicesPlaySystemSound(1113)
        
    }
    
    @IBAction func showNextImageBtn(_ sender: UIButton) {
        AudioServicesPlaySystemSound(1105)
        
    }
    
    @IBAction func showPrevImageBtn(_ sender: UIButton) {
        AudioServicesPlaySystemSound(1105)
        
    }
    
    @IBAction func ResetBtn(_ sender: UIButton) {
        AudioServicesPlaySystemSound(1111)
        
    }
}

