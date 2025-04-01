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
    
    var topics_description = ["Famous landmarks around the world", "Powerful enemies in the Destiny 2 Universe", "Different gaming consoles", "Different game developers", "Shows based off video games"]
    
    var iteratorNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func searchButtonAction(_ sender: UIButton) {
        AudioServicesPlaySystemSound(1113)
        var textInput = searchTextField.text!
        
        if(famousLandmarks_keywords.contains(textInput)){
            var topic = 1
            resultImage.image = UIImage(named: topicsArr[0][iteratorNum])
            topicInfoText.text! = topics_description[0]
        }
        else if(destiny2Enemies_keywords.contains(textInput)){
            var topic = 2
            resultImage.image = UIImage(named: topicsArr[1][iteratorNum])
            topicInfoText.text! = topics_description[1]
        }
        else if(gameConsole_keywords.contains(textInput)){
            var topic = 3
            resultImage.image = UIImage(named: topicsArr[2][iteratorNum])
            topicInfoText.text! = topics_description[2]
        }
        else if(gameDev_keywords.contains(textInput)){
            var topic = 4
            resultImage.image = UIImage(named: topicsArr[3][iteratorNum])
            topicInfoText.text! = topics_description[3]
        }
        else if(gameShow_keywords.contains(textInput)){
            var topic = 5
            resultImage.image = UIImage(named: topicsArr[4][iteratorNum])
            topicInfoText.text! = topics_description[4]
        }
        
    }
    
    @IBAction func showNextImageBtn(_ sender: UIButton) {
        AudioServicesPlaySystemSound(1105)
        if(iteratorNum <= 4){
            iteratorNum += 1
        }
        
        if(iteratorNum == 4){
            sender.isEnabled = false;
        }
        else{
            sender.isEnabled = true;
        }
    }
    
    @IBAction func showPrevImageBtn(_ sender: UIButton) {
        AudioServicesPlaySystemSound(1105)
        if(iteratorNum >= 0){
            iteratorNum -= 1
        }
        
        if(iteratorNum == 0){
            sender.isEnabled = false;
        }
        else{
            sender.isEnabled = true;
        }
    }
    
    @IBAction func ResetBtn(_ sender: UIButton) {
        AudioServicesPlaySystemSound(1111)
        searchTextField.text = ""
        topicInfoText.text = ""
        resultImage.image = nil
        iteratorNum = 0
    }
}

