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
    
    @IBOutlet weak var nextBTNEnabler: UIButton!
    
    @IBOutlet weak var prevBTNEnabler: UIButton!
    
    var topicsArr = [["mountEverest", "eiffelTower", "pearlHarbor"], ["theWitness", "oryx", "eramis"], ["xbox", "ps5", "switch2"], ["bungie", "treyarch", "cdProjektRed"], ["arcane", "fallout", "edgerunners"]]
    
    // Topics:
    // Famous Landmarks: Mount Everest, Pearl Harbor, Eiffel tower
    var famousLandmarks_keywords = ["mountain", "statue", "memorial", "monument"]
    
    // Destiny 2 Enemies: Oryx, The Witness, Eramis
    var destiny2Enemies_keywords = ["massive", "destroyer", "control", "take"]
    
    // Gaming Consoles: Xbox, PlayStation, Switch
    var gameConsole_keywords = ["microsoft", "sony", "nintendo", "console"]
    
    // Game Developer Studios: Bungie, Treyarch, CD Projekt Red
    var gameDev_keywords = ["destiny", "halo", "cod", "Cyberpunk"]
    
    // Game TV Shows: Arcane, Fallout, Edgerunners
    var gameShow_keywords = ["arcane", "fallout", "edgerunners"]
    
    var topics_description = ["Famous landmarks around the world. Images include pictures of Mount Everest, the Eiffel Tower, and The Pearl Harbor Memorial", "Powerful enemies in the Destiny 2 Universe. Images include pictures of The Witness, Oryx: The Taken King, and Eramis Kell of House Salvation", "Different gaming consoles. Images include pictures of the Xbox Series X, the Ps5, and the Nintendo Switch 2", "Different game developers. Images include pictures of Bungie, Treyarch, and CD Projekt Red", "Shows based off video games. Images include pictures of Arcane, The Fallout TV Show, and Cyberpunk: Edgerunners"]
    
    var iteratorNum = 0
    var topic = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nextBTNEnabler.isEnabled = iteratorNum < 2
        prevBTNEnabler.isEnabled = iteratorNum > 0
        
        resultImage.image = UIImage(named: "welcome")
        
        topicInfoText.text! = "Hello, Wyatt!!"
        
    }

    @IBAction func searchButtonAction(_ sender: UIButton) {
        AudioServicesPlaySystemSound(1113)
        var textInput = searchTextField.text!
        
        if(famousLandmarks_keywords.contains(textInput)){
            topic = 1
            resultImage.image = UIImage(named: topicsArr[topic - 1][iteratorNum])
            topicInfoText.text! = topics_description[topic - 1]
        }
        else if(destiny2Enemies_keywords.contains(textInput)){
            topic = 2
            resultImage.image = UIImage(named: topicsArr[topic - 1][iteratorNum])
            topicInfoText.text! = topics_description[topic - 1]
        }
        else if(gameConsole_keywords.contains(textInput)){
            topic = 3
            resultImage.image = UIImage(named: topicsArr[topic - 1][iteratorNum])
            topicInfoText.text! = topics_description[topic - 1]
        }
        else if(gameDev_keywords.contains(textInput)){
            topic = 4
            resultImage.image = UIImage(named: topicsArr[topic - 1][iteratorNum])
            topicInfoText.text! = topics_description[topic - 1]
        }
        else if(gameShow_keywords.contains(textInput)){
            topic = 5
            resultImage.image = UIImage(named: topicsArr[topic - 1][iteratorNum])
            topicInfoText.text! = topics_description[topic - 1]
        }
        else{
            resultImage.image = UIImage(named: "incorrectInput")
            topicInfoText.text! = "No results found for \(textInput)"
            nextBTNEnabler.isEnabled = false
            prevBTNEnabler.isEnabled = false
        }
        
        iteratorNum = 0
        
    }
    
    @IBAction func showNextImageBtn(_ sender: UIButton) {
        sender.isEnabled = iteratorNum < topicsArr[topic - 1].count - 1
        
        AudioServicesPlaySystemSound(1105)
        if(iteratorNum < topicsArr[topic - 1].count - 1){
            iteratorNum += 1
            resultImage.image = UIImage(named: topicsArr[topic - 1][iteratorNum])
        }
        
        sender.isEnabled = iteratorNum < topicsArr[topic - 1].count - 1
        
        if iteratorNum > 0 {
            prevBTNEnabler.isEnabled = true
        }
    }
    
    @IBAction func showPrevImageBtn(_ sender: UIButton) {
        sender.isEnabled = iteratorNum > 0
        
        AudioServicesPlaySystemSound(1105)
        if(iteratorNum > 0){
            iteratorNum -= 1
            resultImage.image = UIImage(named: topicsArr[topic - 1][iteratorNum])
        }
        
        sender.isEnabled = iteratorNum > 0
        
        if iteratorNum < 2 {
            nextBTNEnabler.isEnabled = true
        }
    }
    
    @IBAction func ResetBtn(_ sender: UIButton) {
        AudioServicesPlaySystemSound(1111)
        searchTextField.text = ""
        topicInfoText.text = ""
        resultImage.image = nil
        iteratorNum = 0
        
        nextBTNEnabler.isEnabled = true
        prevBTNEnabler.isEnabled = false
        
        resultImage.image = UIImage(named: "welcome")
        topicInfoText.text! = "Hello, Wyatt!!"
    }
}

