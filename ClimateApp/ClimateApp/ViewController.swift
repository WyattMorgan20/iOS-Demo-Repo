//
//  ViewController.swift
//  ClimateApp
//
//  Created by Morgan,Wyatt J on 1/23/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputOL: UITextField!
    
    @IBOutlet weak var outputOL: UILabel!
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func submitButtonClicked(_ sender: UIButton) {
        // Read the temperature
        let tempIn = inputOL.text!
        
        // Convert String to Integer or Double
        let temp = Int(tempIn)
        
        // Check whether it is cold or hot
        // temperature > 60 (hot) otherwise, cold
        var cold = false
        var hot = false
        if temp! > 60 {
            outputOL.text = "It is hot outside🥵🔥"
            hot = true
        }
        else{
            outputOL.text = "It is cold outside🥶❄️"
            cold = true
        }
        
        // Display the appropriate image
        
    }
    
}

