//
//  MoviesViewModel.swift
//  alkemyChallenge
//
//  Created by Santiago Caraballo on 09/12/2021.
//

import Foundation

struct MoviesViewModel {
    
    var bindInitRequest  = { () -> Void in }
    var bindEndRequest  = { () -> Void in }
    var bindMovies  = { (_ arrayMovies: [Movie]) -> Void in }
    var bindError  = { (_ errorMessage: String) -> Void in }
    
    private let model = MoviesWS()
    
    func getAllMovies() {
        
        
        self.bindInitRequest()
        
        self.model.getAllFavoritesMovies { arrayMoviesDTO in
            
            
            if arrayMoviesDTO.isEmpty {
                self.bindError("No se encontraron resultados")
                self.bindMovies([])
                
            } else {
                self.bindMovies(arrayMoviesDTO.toMovies)
            }
            
            self.bindEndRequest()
           
        }
        
    }
    
    func getAllFavoritesMovies() {
        
        
        self.bindInitRequest()
        
        self.model.getAllMovies { arrayMoviesDTO in
            self.bindEndRequest()
            
            if arrayMoviesDTO.isEmpty {
                self.bindError("No se encontraron resultados")
                
            } else {
                self.bindMovies(arrayMoviesDTO.toMovies)
            }
           
        }
        
    }

    
}
