//
//  CreditCard.swift
//  DemoApplication
//
//  Created by Nitin Bhatt on 02/02/25.
//

class CreditCard: Payment {
    var cardNumber: String
    var expiryDate: String
    
    init(cardNumber: String, expiryDate: String) {
        self.cardNumber = cardNumber
        self.expiryDate = expiryDate
    }
    
    func start(amount: Double) -> String {
        return "Successfully processed \(amount) payment via credit card"
    }
}
