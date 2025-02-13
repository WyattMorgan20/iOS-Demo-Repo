//
//  ViewController.swift
//  WordGuessApp
//
//  Created by Morgan,Wyatt J on 2/13/25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var displayOL: UILabel!
    
    @IBOutlet weak var hintOL: UILabel!
    
    @IBOutlet weak var inputOL: UITextField!
    
    @IBOutlet weak var checkOL: UIButton!
    
    @IBOutlet weak var messageOL: UILabel!
    
    @IBOutlet weak var playAgainOL: UIButton!
    
    var words = [
        ["Destiny", "Cursed Devs"],
        ["Basenji", "Dog"],
        ["Car", "Vehicle"],
        ["Northwest", "School"]
    ]
    
    var count = 0
    var word = ""
    var lettersGuessed = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Check button should be disabled at start
        checkOL.isEnabled = false
        
        // Get first word from the array
        word = words[count][0]
        displayOL.text = ""
        
        // Populate the display label with the underscores.
        // The # of underscores is equal to the # of characters in the word
        updateUnderscores();
        
        // Get the first hint from the array
        hintOL.text = words[count][1]
        
        // Clear the status label initially
        messageOL.text = ""
        
    }

    @IBAction func checkBTNClick(_ sender: UIButton) {
        // Get the text from the text field
        var letter = inputOL.text!
        
        // Replace the guessed letter if the letter is part of the word
        lettersGuessed = lettersGuessed + letter
        var revealedWord = ""
        for item in word{
            if lettersGuessed.contains(item){
                revealedWord += "\(item)"
            }
            else{
                revealedWord += "_ "
            }
        }
        
        // Assigning the word to dispayOL after a guess
        displayOL.text = revealedWord
        inputOL.text = ""
        
        // If the word is guessed cofrectly we are enabling the
        // Play again button
        if displayOL.text!.contains("_") == false{
            playAgainOL.isHidden = false
            checkOL.isEnabled = false
        }
        checkOL.isEnabled = false
    }
    
    @IBAction func playAgainBTNClick(_ sender: UIButton) {
        // Reset the button to disable initially
        playAgainOL.isHidden = true
        
        // Clear the label
        lettersGuessed = ""
        count += 1
        
        // If count reaches the end of the array
        // (all the words are guessed sucessfully),
        // then print Congratulations in the status label
        if count == words.count{
            messageOL.text = "Congratulations! You are done with the game!"
            
            // Clearing the labels
            displayOL.text = ""
            hintOL.text = ""
        }
        else{
            // Fetch the next word from the array
            word = words[count][0]
            
            // Fetch the hint related to the word
            hintOL.text = words[count][1]
            
            // Enabling the check button
            checkOL.isEnabled = true
            
            displayOL.text = ""
            updateUnderscores()
        }
    }
    
    @IBAction func letterEntered(_ sender: UITextField) {
        // Read the data from the text field
        var textEntered = inputOL.text!
        
        // Consider only the last character by calling
        // textEntered.last and trimming the white spaces
        textEntered = String(textEntered.last ?? " ").trimmingCharacters(in: .whitespaces)
        inputOL.text = textEntered
        
        // Check whether the entered text is empty or not to enable check button
        if textEntered.isEmpty{
            checkOL.isEnabled = false
        }
        else{
            checkOL.isEnabled = true
        }
    }
    
    func updateUnderscores(){
        for letter in word{
            displayOL.text! += "_ "
        }
    }
    
}

