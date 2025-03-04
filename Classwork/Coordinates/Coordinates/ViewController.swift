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
        imageViewOT.image = UIImage(named: "download")
        
        let imagex = 176
        let imagey = 117
        
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
        imageViewOT.frame.origin.x = 217
        // adjust x to fit in the screen width (393 - imageViewOutlet.frame.width)
        imageViewOT.frame.origin.y = 0
        // The screen width is 414 (iPhone 16 pro), and we subtract
        // the image width (imageViewOT.frame.width) from it to ensure the
        // image's right edge aligns with the right side of the screen.
        
        // Move location to lower left corner.
        imageViewOT.frame.origin.x = 0
        imageViewOT.frame.origin.y = 735
        // adjust y to fit in the screen height (852 - imageViewOutlet.frame.height)
        // The screen height is 896 (iPhone 16 pro), and we subtract
        // the image height (imageViewOT.frame.height) from it to ensure the
        // image's bottom edge aligns with the bottom edge of the screen.
        
        // Move location to lower right corner.
        imageViewOT.frame.origin.x = 217
        // adjust x to fit the screen width i.e., (393 - imageViewOT.frame.width)
        imageViewOT.frame.origin.y = 735
        // adjust y to fit the screen height i.e., (852 - imageViewOT.frame.height)
        
        // Move location to the center of the view.
        imageViewOT.frame.origin.x = 119
        // adjust to center x i.e., ((414 - imageViewOT.frame.width) / 2)
        imageViewOT.frame.origin.y = 389.5
        // adjust to center y i.e., ((896 - imageViewOT.frame.width) / 2)
    }


}

