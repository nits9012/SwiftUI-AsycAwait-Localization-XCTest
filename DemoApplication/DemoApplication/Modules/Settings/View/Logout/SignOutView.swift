//
//  SignOutView.swift
//  DemoApplication
//
//  Created by Nitin Bhatt on 02/02/25.
//

import SwiftUI

struct SignOutView: View {
    var body: some View {
        HStack {
            Image(systemName: "arrow.right.circle.fill")
                .font(.title)
                .foregroundColor(.white)
            
            Text("Sign Out")
                .font(.headline)
                .foregroundColor(.white)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.red)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}
