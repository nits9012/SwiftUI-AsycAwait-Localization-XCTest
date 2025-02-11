//
//   WelcomeScreenView.swift
//  DemoApplication
//
//  Created by Nitin Bhatt on 01/02/25.
//

import SwiftUI

struct WelcomeScreenView: View {
    @EnvironmentObject var authViewModel: AuthServiceViewModel
    
    var body: some View {
        VStack {
            Spacer()
            
            Image(systemName: "play.rectangle.fill")
                .font(.system(size: 80))
                .foregroundColor(.blue)
                .padding(.bottom, 10)
            
            Text("Welcome to the demo!")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .padding([.leading, .trailing])
            
            Spacer()
            
            Button(action: {
                authViewModel.isLoggedIn = true
            }) {
                Text("Get Started")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.horizontal, 20)
            }
            .padding(.bottom, 40)
        }
    }
}

#Preview {
    WelcomeScreenView()
}
