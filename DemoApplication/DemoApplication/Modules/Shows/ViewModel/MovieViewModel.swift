//
//  MovieViewModel.swift
//  DemoApplication
//
//  Created by Nitin Bhatt on 01/02/25.
//

import Foundation

@MainActor
class MovieViewModel: ObservableObject {
    @Published var movies: [Movie] = []
    @Published var errorMessage:String?
    
    var service: MovieServiceProtocol
    var loading = false
 
    init(service: MovieServiceProtocol = MovieService()) {
          self.service = service
    }
      
    func fetchMovies() {
        loading = true
        
        Task { [weak self] in
            let results = await self?.service.getMovies()
            self?.loading = false
            
            switch results {
            case .failure(let error):
                self?.errorMessage = error.localizedDescription
            case .success(let moviesList) :
                self?.movies = moviesList
            case .none:
                print("Test")
            }
        }
    }
}

