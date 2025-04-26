//
//  ViewController.swift
//  Morgan_MovieApp
//
//  Created by Wyatt Morgan on 4/25/25.
//

import UIKit

class MorganMoviesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var moviesTableView: UITableView!
    
    var genres: [Movies] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        genres = [
            Movies(genre: "Action", list_Array: [
                MovieList(movieName: "Top Gun", movieImage: "topGun", movieInfo: "Maverick has to learn not to be a 1 man show and work with others."),
                MovieList(movieName: "Top Gun Maverick", movieImage: "topGunMav", movieInfo: "Maverick has to teach others how to pull off an impossible mission."),
                MovieList(movieName: "Chappie", movieImage: "chappie", movieInfo: "AI Robot learns about humans and helps stop a potential genocide."),
                MovieList(movieName: "Novocaine", movieImage: "novocaine", movieInfo: "A bank owner with a condition where he cant feel pain has to save the love of his life from bank robbers."),
                MovieList(movieName: "Avengers", movieImage: "avengers", movieInfo: "Your favorite Marvel superheros team up to defeat the Chitari army.")
            ]),
            Movies(genre: "Comedy", list_Array: [
                MovieList(movieName: "Deadpool", movieImage: "deadpool", movieInfo: "A fast-talking mercenary with a twisted sense of humor."),
                MovieList(movieName: "No Hard Feelings", movieImage: "nohardfeelings", movieInfo: "A woman hired to date an awkward teenager before college."),
                MovieList(movieName: "Horrible Bosses", movieImage: "horriblebosses", movieInfo: "Three friends plot to murder their overbearing bosses."),
                MovieList(movieName: "The Naked Gun", movieImage: "thenakedgun", movieInfo: "An inept police detective bumbles his way through a criminal conspiracy."),
                MovieList(movieName: "Airplane", movieImage: "airplane", movieInfo: "A spoof disaster film filled with hilarious gags.")
            ]),
            Movies(genre: "Horror", list_Array: [
                MovieList(movieName: "Hereditary", movieImage: "hereditary", movieInfo: "A family's dark secrets unfold after the death of their matriarch."),
                MovieList(movieName: "Halloween", movieImage: "halloween", movieInfo: "A masked killer returns to his hometown to terrorize."),
                MovieList(movieName: "Alien Romulus", movieImage: "alienromulus", movieInfo: "A terrifying new chapter in the Alien franchise."),
                MovieList(movieName: "Midsommar", movieImage: "midsommar", movieInfo: "A couple travels to a rural Swedish festival with dark undertones."),
                MovieList(movieName: "Black Phone", movieImage: "blackphone", movieInfo: "A kidnapped boy receives calls from past victims on a disconnected phone.")
            ]),
            Movies(genre: "Drama", list_Array: [
                MovieList(movieName: "Last Breath", movieImage: "lastbreath", movieInfo: "A deep-sea diver struggles to survive with limited air supply while waiting for rescue."),
                MovieList(movieName: "Parasite", movieImage: "parasite", movieInfo: "A poor family's scheme intertwines with a wealthy household."),
                MovieList(movieName: "Unbroken", movieImage: "unbroken", movieInfo: "A war hero survives incredible odds during WWII."),
                MovieList(movieName: "Contagion", movieImage: "contagion", movieInfo: "A deadly virus spreads globally while scientists race for a cure."),
                MovieList(movieName: "Fury", movieImage: "fury", movieInfo: "A tank crew battles behind enemy lines in WWII Germany.")
            ])
        ]
        
        moviesTableView.delegate = self
        moviesTableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return genres.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create Cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "genreCell", for: indexPath)
            
        // Populate Cell
        cell.textLabel?.text = genres[indexPath.row].genre
            
        // Return Cell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedGenre = genres[indexPath.row]
        performSegue(withIdentifier: "listsSegue", sender: selectedGenre)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "listsSegue" {
            if let destinationVC = segue.destination as? MovieListViewController, let selectedGenre = sender as? Movies {
                destinationVC.selectedGenre = selectedGenre
            }
        }
    }

}

