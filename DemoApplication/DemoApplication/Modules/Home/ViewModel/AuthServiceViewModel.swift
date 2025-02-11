//
//  AuthServiceViewModel.swift
//  DemoApplication
//
//  Created by Nitin Bhatt on 02/02/25.
//

import Foundation

class AuthServiceViewModel: ObservableObject {
    @Published var isLoggedIn = false
    
    func signIn() {
        self.isLoggedIn = true
    }
    
    func signOut(){
        self.isLoggedIn = false
    }
}
