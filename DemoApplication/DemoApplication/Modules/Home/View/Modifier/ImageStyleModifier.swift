//
//  ImageStyleModifier.swift
//  DemoApplication
//
//  Created by Nitin Bhatt on 04/02/25.
//

import SwiftUI

// Define the custom view modifier
struct ImageStyleModifier: ViewModifier {
    // The body of the view modifier
    func body(content: Content) -> some View {
        content
            .scaledToFit()
            .frame(width: 50, height: 50)
            .foregroundColor(.gray)
            .clipShape(Circle())
            .shadow(radius: 1)
    }
}
