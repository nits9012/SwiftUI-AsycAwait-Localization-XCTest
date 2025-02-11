//
//  MovieService.swift
//  DemoApplication
//
//  Created by Nitin Bhatt on 01/02/25.
//

import Foundation

protocol MovieServiceProtocol {
    func getMovies() async -> Result<[Movie], APIError>
}

class MovieService: MovieServiceProtocol {
    func getMovies() async -> Result<[Movie], APIError> {
        guard let url =  Bundle.main.url(forResource: "Movies", withExtension: "json") else {
            return .failure(APIError.invalidURL)
        }
        
        guard let data = try? Data(contentsOf: url) else {
            return .failure(APIError.invalidURL)
        }
        
        do {
            let movies = try JSONDecoder().decode([Movie].self, from: data)
            return .success(movies)
        } catch {
            return .failure(.decodingError)
        }
    }
}
