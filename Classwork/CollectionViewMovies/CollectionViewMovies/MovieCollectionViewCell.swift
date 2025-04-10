//
//  MovieCollectionViewCell.swift
//  CollectionViewMovies
//
//  Created by Morgan,Wyatt J on 4/10/25.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    func assignMovie(with movie: Movie){
        imageViewOL.image = movie.image
    }
    
}
