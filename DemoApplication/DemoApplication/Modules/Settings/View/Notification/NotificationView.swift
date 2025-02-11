//
//  NotificationView.swift
//  DemoApplication
//
//  Created by Nitin Bhatt on 01/02/25.
//

import SwiftUI

struct NotificationView: View {
    @State private var notificationsEnabled = true
    
    var body: some View {
        Form {
            Section {
                Toggle(isOn: $notificationsEnabled) {
                    Text("Enable Notifications")
                }
            }
        }
    }
}

#Preview {
    NotificationView()
}
