//
//  ViewController.swift
//  alkemyChallenge
//
//  Created by Santiago Caraballo on 06/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tbvMovies: UITableView!
    
        
    
    var arrayMovies = [Movie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
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

