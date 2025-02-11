//
//  PaymentOptionView.swift
//  DemoApplication
//
//  Created by Nitin Bhatt on 01/02/25.
//

import SwiftUI

struct PaymentOptionView: View {
    var option: PaymentOption
    var isSelected: Bool
    
    var body: some View {
        HStack {
            Image(systemName: option.icon)
                .font(.subheadline)
                .foregroundColor(isSelected ? .blue : .gray)
            
            Text(option.title)
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(isSelected ? .blue : .black)
            
            Spacer()
            
            if isSelected {
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(.blue)
            }
        }
        .padding()
        .background(isSelected ? Color.blue.opacity(0.1) : Color.white)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(isSelected ? Color.blue : Color.gray, lineWidth: 1)
        )
        .padding([.leading, .trailing], 20)
    }
}
