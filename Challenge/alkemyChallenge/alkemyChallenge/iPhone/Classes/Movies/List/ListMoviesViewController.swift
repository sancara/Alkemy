//
//  ListMoviesViewController.swift
//  alkemyChallenge
//
//  Created by Santiago Caraballo on 08/12/2021.
//

import UIKit
import SwiftUI

class ListMovieViewController: UIViewController {
    
    @IBOutlet weak var tbvMovies: UITableView!
    
    private lazy var refreshControl: UIRefreshControl = {
        let control = UIRefreshControl ()
        control.addTarget(self, action: #selector(self.pullToRefresh), for: .valueChanged)
        return control
    } ()
    
    var viewModel = MoviesViewModel()
    var arrayMovies = [Movie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configure()
    }
        
    
    func setupBinds() {
        
        self.viewModel.bindInitRequest = { self.showLoading(true) }
        self.viewModel.bindEndRequest = { self.showLoading(false) }
        self.viewModel.bindError = { errorMessage in self.showErrorMessage(errorMessage) }
        self.viewModel.bindMovies = { arrayMovies in self.reloadMovies(arrayMovies) }
            
        }
}

extension ListMovieViewController {
    
    @objc func pullToRefresh () {
        self.viewModel.getAllMovies()
    }
    
    func configure () {
        
        self.tbvMovies.dataSource = self
        self.tbvMovies.addSubview(self.refreshControl)
        
        self.setupBinds()
        self.viewModel.getAllMovies()
    }
    
    func showLoading(_ show: Bool) {
        
        show ? self.refreshControl.beginRefreshing() : self.refreshControl.endRefreshing()
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
