//
//  MovieView.swift
//  DemoApplication
//
//  Created by Nitin Bhatt on 01/02/25.
//

import SwiftUI

struct MovieView: View {
    @StateObject private var viewModel = MovieViewModel()
        
    var body: some View {
        NavigationStack {
            VStack {
                if viewModel.loading {
                    LoadingView()
                } else {
                    MovieListRows(movies: $viewModel.movies)
                }
            }.onAppear {
                // Fetch users when the view appears
               viewModel.fetchMovies()
            }
            .navigationTitle("Shows")
        }
    }
}

#Preview {
    MovieView()
}


//import SDWebImageSwiftUI
//                WebImage(url: URL(string: "https://nokiatech.github.io/heif/content/images/ski_jump_1440x960.heic")) { image in
//                      image.resizable() // Control layout like SwiftUI.AsyncImage, you must use this modifier or the view will use the image bitmap size
//                  } placeholder: {
//                          Rectangle().foregroundColor(.gray)
//                  }
//                  // Supports options and context, like `.delayPlaceholder` to show placeholder only when error
//                  .onSuccess { image, data, cacheType in
//                      // Success
//                      // Note: Data exist only when queried from disk cache or network. Use `.queryMemoryData` if you really need data
//                  }
//                  .indicator(.activity) // Activity Indicator
//                  .transition(.fade(duration: 0.5)) // Fade Transition with duration
//                  .scaledToFit()
//                  .frame(width: 300, height: 300, alignment: .center)
