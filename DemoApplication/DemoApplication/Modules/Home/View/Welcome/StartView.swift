//
//  StartView.swift
//  DemoApplication
//
//  Created by Nitin Bhatt on 02/02/25.
//

import SwiftUI

struct StartView: View {
    @EnvironmentObject var authViewModel: AuthServiceViewModel
    
    var body: some View {
        if authViewModel.isLoggedIn {
             HomeView()
        }else {
             WelcomeScreenView()
        }
    }
}
