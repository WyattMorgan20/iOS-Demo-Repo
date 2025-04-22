//
//  MorganGameController.swift
//  Morgan_Exam03
//
//  Created by Wyatt Morgan on 4/22/25.
//

import UIKit

class MorganGameController: UIViewController {

    @IBOutlet weak var imageViewOL: UIImageView!
    
    @IBOutlet weak var titleOL: UINavigationItem!

    @IBOutlet weak var nameOL: UILabel!
    
    @IBOutlet weak var descriptionOL: UILabel!
    
    var selectedGame: Game?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let game = selectedGame {
            nameOL.text = game.name
            imageViewOL.alpha = 0.0
            imageViewOL.image = game.imageName
            descriptionOL.text = game.information
            
            // Fade-in animation
            UIView.animate(withDuration: 0.8) {
                self.imageViewOL.alpha = 1.0
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
