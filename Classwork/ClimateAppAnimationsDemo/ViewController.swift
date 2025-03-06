//
//  ViewController.swift
//  ClimateApp
//
//  Created by Mahitha Vudutha on 1/23/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputOL: UITextField!
    
    @IBOutlet weak var outputOL: UILabel!
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func submitBtnClicked(_ sender: UIButton) {
        //Read the temprature and assign it to var.
        var temp = inputOL.text!
        //Convert the temprature String to Int/Double
        var temperature = Int(temp)!
        
        //Check whether it is cold or hot.
        if (temperature > 60) {
            //temprature>60 (hot) otherwise, cold. Display the appropriate image.
            //assign the result to the outputOL
            
           
            UIView.animate(withDuration: 0.5, animations: {
                       self.imageViewOL.alpha = 0.0 // Fade out
            })
            
            UIView.animate(withDuration: 1.0, delay: 0.5, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.6, animations: {
                self.imageViewOL.alpha = 1.0 // Fade in
                self.imageViewOL.image = UIImage(named: "hot")
            
            })
            outputOL.text = "It is hot outside. 🔥"
        }
        
        
        else{
            UIView.animate(withDuration: 0.5, animations: {
                       self.imageViewOL.alpha = 0.0 // Fade out
            })
            UIView.animate(withDuration: 1.0, delay: 0.5, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.6, animations: {
                self.imageViewOL.alpha = 1.0 // Fade in
                self.imageViewOL.image = UIImage(named: "cold")
            })
            outputOL.text = "It is cold outside. 🥶"
        }
        
        
    }
    
    
    
}
