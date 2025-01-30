//
//  ViewController.swift
//  InitialsApp
//
//  Created by Morgan,Wyatt J on 1/30/25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var fNameOT: UITextField!
    
    @IBOutlet weak var lNameOT: UITextField!
    
    @IBOutlet weak var outputOT: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func SubmitBTN(_ sender: UIButton) {
        // read fName text and save it to variable fName
        // read lName text and save it to variable lName
        var fName: String = fNameOT.text!
        var lName: String = lNameOT.text!
        
        // get the first letter of fName and lName
        // MUST be uppercase
        var fInitials = fName.prefix(1).uppercased()
        var lInitials = lName.prefix(1).uppercased()
        
        // Display result in the outputOT
        outputOT.text = "Your initials are \(fInitials) \(lInitials)"
    }
    
}

