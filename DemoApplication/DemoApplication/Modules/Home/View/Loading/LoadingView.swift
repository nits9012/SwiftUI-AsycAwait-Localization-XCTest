//
//  LoadingView.swift
//  DemoApplication
//
//  Created by Nitin Bhatt on 26/01/25.
//

import SwiftUI

import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack {
            ProgressView("Loading...")
                .progressViewStyle(CircularProgressViewStyle(tint: .gray))
        }
    }
}
