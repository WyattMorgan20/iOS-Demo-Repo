//
//  MovieListViewController.swift
//  Morgan_MovieApp
//
//  Created by Wyatt Morgan on 4/25/25.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var movieListTableView: UITableView!
    
    var selectedGenre: Movies?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = selectedGenre?.genre ?? "Movies"
        movieListTableView.delegate = self
        movieListTableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return selectedGenre?.list_Array.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath)
        cell.textLabel?.text = selectedGenre?.list_Array[indexPath.row].movieName
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "movieInfoSegue", sender: selectedGenre?.list_Array[indexPath.row])
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "movieInfoSegue" {
            if let destinationVC = segue.destination as? MovieInfoViewController, let selectedMovie = sender as? MovieList {
                destinationVC.selectedMovie = selectedMovie
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
