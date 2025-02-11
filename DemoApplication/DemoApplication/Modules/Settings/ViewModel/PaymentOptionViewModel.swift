//
//  PaymentOptionViewModel.swift
//  DemoApplication
//
//  Created by Nitin Bhatt on 02/02/25.
//

import Foundation


class PaymentOptionViewModel {
    
    func getPaymentOptions() -> [PaymentOption] {
        let paymentOptions: [PaymentOption] = [
            PaymentOption(id: 1, title: "Credit Card", icon: "creditcard.fill", type: "credit"),
            PaymentOption(id: 2, title: "Stripe", icon: "applelogo", type: "stripe"),
            PaymentOption(id: 3, title: "PayPal", icon: "cursor.rays", type: "paypal")
        ]
        return paymentOptions
    }
    
    func paymentStart(method: PaymentMethod) -> ProcessPayment {
        let selectedMethod: Payment
        
        switch method {
        case .creditCard :
            selectedMethod = CreditCard(cardNumber: "", expiryDate: "")
        case .stripe :
            selectedMethod = Stripe()
        default :
            selectedMethod = Paypal()
        }
        
        return ProcessPayment(payment: selectedMethod)
    }
    
    
    func selectedPaymentGateway(type: String) {
        guard let paymentType = PaymentMethod(rawValue: type) else {
            print("Invalid payment method: \(type)")
            return
        }
        
        var paymentMethod: ProcessPayment?
        
        switch paymentType {
        case .creditCard :
            paymentMethod = paymentStart(method: .creditCard)
        case .stripe :
            paymentMethod = paymentStart(method: .stripe)
        case .paypal :
            paymentMethod = paymentStart(method: .paypal)
        }
        
        print(paymentMethod?.processPayment(amount: 20.0))
    }
    
}
