//
//  ProcessPayment.swift
//  DemoApplication
//
//  Created by Nitin Bhatt on 02/02/25.
//

protocol Payment {
    func start(amount: Double) -> String
}

class ProcessPayment {
    var payment: Payment
    
    init(payment: Payment) {
        self.payment = payment
    }
    
    func processPayment(amount: Double) -> String {
        return payment.start(amount: amount)
    }
}

