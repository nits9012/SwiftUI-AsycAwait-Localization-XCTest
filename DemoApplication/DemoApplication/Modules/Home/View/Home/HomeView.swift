//
//  HomeView.swift
//  DemoApplication
//
//  Created by Nitin Bhatt on 27/01/25.
//

import SwiftUI

struct HomeView: View {    
    var body: some View {
        TabView {
            // First tab
            UserView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            
            // Second tab
            MovieView()
                .tabItem {
                    Label("Shows", systemImage: "movieclapper.fill")
                }
            
            // Third tab
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape.fill")
                }
        }
    }
}


