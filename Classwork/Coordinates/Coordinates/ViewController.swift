//
//  ViewController.swift
//  Coordinates
//
//  Created by Morgan,Wyatt J on 3/4/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewOT: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Set random image
        imageViewOT.image = UIImage(named: "Best")
        
        let minx = imageViewOT.frame.minX
        let miny = imageViewOT.frame.minY
        print(minx, ",", miny)
        
        let maxx = imageViewOT.frame.maxX
        let maxy = imageViewOT.frame.maxY
        print(maxx, ",", maxy)
        
        // Move the location to the upper left corner.
        imageViewOT.frame.origin.x = 0
        imageViewOT.frame.origin.y = 0
        
        // Move location to upper right corner.
        imageViewOT.frame.origin.x = 293
        imageViewOT.frame.origin.y = 0
        
        // Move location to lower left corner.
        imageViewOT.frame.origin.x = 0
        imageViewOT.frame.origin.y = 752
        
        // Move location to lower right corner.
        imageViewOT.frame.origin.x = 293
        imageViewOT.frame.origin.y = 752
        
        // Move location to the center of the view.
        imageViewOT.frame.origin.x = 146.5
        imageViewOT.frame.origin.y = 376
    }


}

