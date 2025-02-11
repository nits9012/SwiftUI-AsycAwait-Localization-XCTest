//
//  UserView.swift
//  DemoApplication
//
//  Created by Nitin Bhatt on 26/01/25.
//

import SwiftUI

struct UserView: View {
    @StateObject private var viewModel = UserViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                if viewModel.loading {
                    LoadingView()
                } else {
                    UserViewRows(users: viewModel.users)
                }
            }.onAppear {
                // Fetch users when the view appears
                viewModel.fetchContacts()
            }
            .navigationTitle("Users")
            .searchable(text: $viewModel.searchText)
        }
    }
}


#Preview {
    UserView()
}
