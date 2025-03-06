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
        if temp! > 60 {
            UIView.animate(withDuration: 0.5, animations: {
                self.imageViewOL.alpha = 0.0 // Fade out
            })
            imageViewOL.image = UIImage(named: "Hot")
            outputOL.text = "It is hot outside🥵🔥"
        }
        else{
            imageViewOL.image = UIImage(named: "Cold")
            outputOL.text = "It is cold outside🥶❄️"
        }
        
        // Display the appropriate image
        
    }
    
}

