//
//  ViewController.swift
//  GoodbyeApp
//
//  Created by Morgan,Wyatt J on 1/21/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fName: UITextField!
    
    @IBOutlet weak var lName: UITextField!
    
    @IBOutlet weak var outputOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func submitBTNClicked(_ sender: UIButton) {
        //binding name fields fname and lname to respective variables
        var fName = fName.text!
        var lName = lName.text!
        
        //displaying goodbye message with variables
        outputOL.text = "Goodbye, \(fName) \(lName)!"
    }
    

}

