//
//  Movie.swift
//  DemoApplication
//
//  Created by Nitin Bhatt on 01/02/25.
//

import Foundation

struct Movie: Codable, Identifiable {
    var id: Int
    var title: String
    var coverUrl: String
    var trailerUrl: String
}
