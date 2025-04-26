//
//  MovieInfoViewController.swift
//  Morgan_MovieApp
//
//  Created by Wyatt Morgan on 4/25/25.
//

import UIKit

class MovieInfoViewController: UIViewController {

    @IBOutlet weak var movieImageViewOutlet: UIImageView!
    
    @IBOutlet weak var movieInfoOutlet: UILabel!
    
    var selectedMovie: MovieList?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = selectedMovie?.movieName
        movieImageViewOutlet.image = UIImage(named: selectedMovie?.movieImage ?? "")
        animateImage()
    }

    func animateImage() {
        movieImageViewOutlet.alpha = 0.0
        UIView.animate(withDuration: 2.0) {
            self.movieImageViewOutlet.alpha = 1.0
        }
    }
    
    @IBAction func showInfoAction(_ sender: UIButton) {
        movieInfoOutlet.text = selectedMovie?.movieInfo
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
