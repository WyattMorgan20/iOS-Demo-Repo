//
//  ViewController.swift
//  CollectionViewMovies
//
//  Created by Morgan,Wyatt J on 4/10/25.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // Create a cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
        
        // Populate the cell
        cell.assignMovie(with: movies[indexPath.row])
        
        // Return the cell
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        TitleOL.text = "Movie Title: \(movies[indexPath.row].title)"
        yearOL.text = "Year Released: \(movies[indexPath.row].releasedYear)"
        ratingOL.text = "Rating: \(movies[indexPath.row].movieRating)"
        revenueOL.text = "Revenue: \(movies[indexPath.row].boxOffice)"
    }
    

    @IBOutlet weak var CollectionViewOL: UICollectionView!
    
    @IBOutlet weak var TitleOL: UILabel!
    
    @IBOutlet weak var yearOL: UILabel!
    
    @IBOutlet weak var ratingOL: UILabel!
    
    @IBOutlet weak var revenueOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        CollectionViewOL.delegate = self
        CollectionViewOL.dataSource = self
        
    }


}

