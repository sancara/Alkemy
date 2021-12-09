//
//  ListMoviesViewController.swift
//  alkemyChallenge
//
//  Created by Santiago Caraballo on 08/12/2021.
//

import UIKit

class ListMovieViewController: UIViewController {
    
    @IBOutlet weak var tbvMovies: UITableView!
    
    var viewModel = MoviesViewModel()
    
    var arrayMovies = [Movie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tbvMovies.dataSource = self
        
    }
    
    
    func setupBinds() {
        
        self.viewModel.bindInitRequest = { self.showLoading(true) }
        self.viewModel.bindEndRequest = { self.showLoading(false) }
        self.viewModel.bindError = { errorMessage in self.showErrorMessage(errorMessage) }
        self.viewModel.bindMovies = { arrayMovies in self.reloadMovies(arrayMovies) }
            
        }
}

extension ListMovieViewController {
    
    func showLoading(_ show: Bool) {
        
    }
    
    func showErrorMessage (_ errorMessage: String) {
        print("Ocurrió un error: \(errorMessage)")
    }
     
    func reloadMovies(_ arrayMovies: [Movie]) {
        self.arrayMovies = arrayMovies
        self.tbvMovies.reloadData()
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
