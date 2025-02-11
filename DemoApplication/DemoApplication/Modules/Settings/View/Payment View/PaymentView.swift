//
//  PaymentView.swift
//  DemoApplication
//
//  Created by Nitin Bhatt on 02/02/25.
//

import SwiftUI

struct PaymentView: View {
    // Define the available payment options
    var viewModel = PaymentOptionViewModel()
    
    // Track the selected payment option
    @State private var selectedOption: PaymentOption?

    var body: some View {
        NavigationView {
            VStack {
                // Title and Description
                Text("Choose Payment Method")
                    .font(.title)
                    .bold()
                    .padding()
                
                // Payment options
                ForEach(viewModel.getPaymentOptions()) { option in
                    PaymentOptionView(option: option, isSelected: (selectedOption == option))
                        .onTapGesture {
                            selectedOption = option
                        }
                        .padding(.vertical, 8)
                }

                Spacer()

                // Proceed Button
                if let selectedOption = selectedOption {
                    Button(action: {
                        viewModel.selectedPaymentGateway(type: selectedOption.type)
                    }) {
                        Text("Proceed with \(selectedOption.title)")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}
