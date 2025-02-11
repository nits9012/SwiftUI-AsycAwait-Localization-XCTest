//
//  MovieListRows.swift
//  DemoApplication
//
//  Created by Nitin Bhatt on 01/02/25.
//

import Foundation
import SwiftUI

struct MovieListRows: View {
    let defaultAvatarImage = "person.circle.fill"
    @Binding var movies: [Movie]
    
    var body: some View {
        List(movies) { movie in
            NavigationLink(destination: Text("Hello")) {
                HStack {
                    // Display Image using AsyncImage (SwiftUI 3.0+)
                    AsyncImage(url: URL(string: movie.coverUrl)) { phase in
                        switch phase {
                        case .empty:
                            ProgressView()
                                .frame(width: 100, height: 100)
                        case .success(let image):
                            image.resizable()
                                .scaledToFill()
                                .frame(width: 100, height: 100)
                                .clipped()
                        case .failure:
                            Image(systemName: "photo")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 100, height: 100)
                                .clipped()
                        @unknown default:
                            EmptyView()
                        }
                    }
                    .cornerRadius(10)
                    
                    VStack(alignment: .leading) {
                        Text(movie.title)
                            .font(.headline)
                            .lineLimit(2)
                    }
                    .padding(.leading, 10)
                }
                .padding(.vertical, 5)
            }
        }
    }
}
