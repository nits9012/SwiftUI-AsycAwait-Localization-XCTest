//
//  Paypal.swift
//  DemoApplication
//
//  Created by Nitin Bhatt on 02/02/25.
//


class Paypal: Payment {
    func start(amount: Double) -> String {
        return "Successfully processed \(amount) payment via paypal"
    }
}
