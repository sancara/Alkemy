//
//  ViewController.swift
//  alkemyChallenge
//
//  Created by Santiago Caraballo on 06/12/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.getAllMovies()
    }
    
    func getAllMovies() {
        
        let webService = MoviesWS()
        webService.getAllMovies { arrayMoviesDTO in
            
        }
        
    }


}

