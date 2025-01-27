//
//  ViewController.swift
//  HelloApp
//
//  Created by Morgan,Wyatt J on 1/21/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputOL: UITextField!
    
    @IBOutlet weak var OutputOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    @IBAction func submitBTNClicked(_ sender: UIButton) {
        //Read the text field data or user input
        //and assign it to a variable called name.
        var name = inputOL.text!
        
        //display the output in ("Hello,\(name)!")
        OutputOL.text = "Hello, \(name)!"
    }
    

}

