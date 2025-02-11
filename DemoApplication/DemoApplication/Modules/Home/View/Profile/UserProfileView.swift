//
//  UserProfileView.swift
//  DemoApplication
//
//  Created by Nitin Bhatt on 26/01/25.
//

import SwiftUI

struct UserProfileView: View {
    
    var user: User
    
    // Helper method to handle AsyncImage
    @ViewBuilder private func profileImage() -> some View {
        Image(systemName: "person.circle.fill")
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
    }
      
    var body: some View {
        Form {
            Section(header: Text("Profile Information")) {
                VStack {
                    // Profile Image
                    profileImage()
                    
                    // Name
                    Text(user.name)
                        .font(.title)
                        .fontWeight(.bold)
                    
                    // Email
                    Text(user.email)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    // Phone (optional)
                    if let phone = user.phone {
                        Text(phone)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
            }
        }
    }
}
