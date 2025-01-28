//
//  ViewController.swift
//  VowelTester
//
//  Created by Morgan,Wyatt J on 1/28/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    
    @IBOutlet weak var output: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func testBTN(_ sender: UIButton) {
        var letter: String = input.text!
        
        if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u"{
            output.text = "\(letter) is a vowel!"
        }
        else{
            output.text = "\(letter) is NOT a vowel!"
        }
    }
    

}

