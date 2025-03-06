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
        // Hot:
        if temp! > 60 {
            UIView.animate(withDuration: 0.5, animations: {
                self.imageViewOL.alpha = 0.0 // Fade out
            })
            
            UIView.animate(withDuration: 1.0, delay: 0.5, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.6, animations: {
                self.imageViewOL.alpha = 1.0 // Fade in
                self.imageViewOL.image = UIImage(named: "Hot")
            })
            outputOL.text = "It is hot outside🥵🔥"
        }
        // Cold:
        else{
            UIView.animate(withDuration: 0.5, animations: {
                self.imageViewOL.alpha = 0.0 // Fade out
            })
            
            UIView.animate(withDuration: 1.0, delay: 0.5, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.6, animations: {
                self.imageViewOL.alpha = 1.0 // Fade in
                self.imageViewOL.image = UIImage(named: "Cold")
            })
            outputOL.text = "It is cold outside🥶❄️"
        }
        
        // Display the appropriate image
        
    }
    
}

