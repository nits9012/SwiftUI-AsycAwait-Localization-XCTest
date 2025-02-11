//
//  SettingsView.swift
//  DemoApplication
//
//  Created by Nitin Bhatt on 29/01/25.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var authViewModel: AuthServiceViewModel
    
    var body: some View {
        NavigationView {
            Form {
                Section{
                    NavigationLink(destination: AboutView()) {
                        HStack {
                            Image(systemName: "person.circle")
                                .foregroundColor(.blue)
                            Text("Account")
                                .font(.body)
                        }
                    }
                }
                
                Section {
                    NavigationLink(destination: PaymentView()) {
                        HStack {
                            Image(systemName: "creditcard")
                                .foregroundColor(.orange)
                            Text("Subscription")
                                .font(.body)
                        }
                    }
                    
                    NavigationLink(destination: AboutView()) {
                        HStack {
                            Image(systemName: "heart")
                                .foregroundColor(.orange)
                            Text("Favourites")
                                .font(.body)
                        }
                    }
                    
                    NavigationLink(destination: NotificationView()) {
                        HStack {
                            Image(systemName: "bell")
                                .foregroundColor(.orange)
                            Text("Notification")
                                .font(.body)
                        }
                    }
                }
                
                Section {
                    NavigationLink(destination: AboutView()) {
                        HStack {
                            Image(systemName: "lock.shield")
                                .foregroundColor(.blue)
                            Text("Privacy Policy")
                                .font(.body)
                        }
                    }
                    NavigationLink(destination: AboutView()) {
                        HStack {
                            Image(systemName: "lock.shield")
                                .foregroundColor(.green)
                            Text("Terms of Use")
                                .font(.body)
                        }
                    }
                    NavigationLink(destination: AboutView()) {
                        HStack {
                            Image(systemName: "info.circle.fill")
                                .foregroundColor(.orange)
                            Text("FAQs")
                                .font(.body)
                        }
                    }
                    
                    NavigationLink(destination: AboutView()) {
                        HStack {
                            Image(systemName: "questionmark.circle")
                                .foregroundColor(.orange)
                            Text("Help Center")
                                .font(.body)
                        }
                    }
                }
                
                Section {
                    Button(action: {
                        authViewModel.signOut()
                    }) {
                        SignOutView()
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }
}
