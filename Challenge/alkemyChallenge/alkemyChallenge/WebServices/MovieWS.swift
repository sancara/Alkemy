//
//  MovieWS.swift
//  alkemyChallenge
//
//  Created by Santiago Caraballo on 06/12/2021.
//

import Foundation
import Alamofire

typealias MoviesHandler = (_ arrayMoviesDTO: [MovieDTO]) -> Void
struct MoviesWS {
    
    func getAllMovies(completionHandler: @escaping MoviesHandler) {
        let urlString = "https://api.themoviedb.org/3/movie/popular?api_key=eeef7cbef31404b6ef6faa5b2dcf72d2"
        let request = AF.request(urlString, method: .get)
        
        request.response { dataResponse in
            
            guard let data = dataResponse.data else { return }
            
            let jsonDecoder = JSONDecoder()
            let pageMovies = try? jsonDecoder.decode(PageMovieDTO.self, from: data)
            completionHandler(pageMovies?.results ?? [])
            
        }
    }
    
    func getAllFavoritesMovies(completionHandler: @escaping MoviesHandler) {
        let urlString = "https://api.themoviedb.org/3/movie/popular?api_key=eeef7cbef31404b6ef6faa5b2dcf72d2"
        let request = AF.request(urlString, method: .get)
        
        request.response { dataResponse in
            
            let showData = Bool.random()
            
            if showData {
                
                guard let data = dataResponse.data else { return }
                
                let jsonDecoder = JSONDecoder()
                let pageMovies = try? jsonDecoder.decode(PageMovieDTO.self, from: data)
                
                completionHandler(pageMovies?.results ?? [])
                
            } else {
                
                completionHandler([])
            }
            
        }
    }
}
