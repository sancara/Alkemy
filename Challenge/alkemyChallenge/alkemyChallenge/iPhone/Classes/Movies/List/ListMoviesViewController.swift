//
//  ListMoviesViewController.swift
//  alkemyChallenge
//
//  Created by Santiago Caraballo on 08/12/2021.
//

import UIKit

class ListMovieViewController: UIViewController {
    
    @IBOutlet weak var tbvMovies: UITableView!
    
        
    
    var arrayMovies = [Movie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tbvMovies.dataSource = self
        self.getAllMovies()
        
           }
    
    func getAllMovies() {
        
        let webService = MoviesWS()
        webService.getAllMovies { arrayMoviesDTO in
            self.arrayMovies = arrayMoviesDTO.toMovies
            self.tbvMovies.reloadData()
        }
        
    }
}

extension ListMovieViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.arrayMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let movie = self.arrayMovies[indexPath.row]
        return MovieTableViewCell.buildInTableView(tableView, indexPath: indexPath, movie: movie)
    }
    
    
}
