//
//  UserViewRows.swift
//  DemoApplication
//
//  Created by Nitin Bhatt on 26/01/25.
//

import SwiftUI

struct UserViewRows: View {
    let defaultAvatarImage = "person.circle.fill"
    var users: [User]
    
    var body: some View {
        List(users) { user in
            NavigationLink(destination: UserProfileView(user: user)) {
                HStack {
                    Image(systemName: defaultAvatarImage)
                        .resizable()
                        .modifier(ImageStyleModifier())
                    
                    VStack(alignment: .leading) {
                        Text(user.name)
                            .font(.headline)
                            .foregroundColor(.primary)
                        Text(user.email)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    .padding(.leading, 12)
                }
            }
        }
    }
}
