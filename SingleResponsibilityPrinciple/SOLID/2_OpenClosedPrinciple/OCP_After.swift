//
//  OCP_After.swift
//  SOLID_Principles
//
//  Created by Alex Nagy on 18.12.2021.
//

/*:
 ## Open-Closed Principle
 [Wikipedia](https://en.wikipedia.org/wiki/Open%E2%80%93closed_principle)

 "Entities should be open for extension but closed for modification."

 A class is closed, since it may be compiled, stored in a library, baselined, and used by client classes. But it is also open, since any new class may use it as parent, adding new features. When a descendant class is defined, there is no need to change the original or to disturb its clients.
 
 */

import Foundation

// adheres to open-close principle by being closed for modification
fileprivate protocol PaymentProtocol {
    func makePayment(amount: Double)
}

//v.1.0
fileprivate class CashPayment: PaymentProtocol {
    func makePayment(amount: Double) {
        // perform cash payment
    }
}
//v.1.0
fileprivate class VisaPayment: PaymentProtocol {
    func makePayment(amount: Double) {
        // perform visa payment
    }
}
//v.2.0 -> adheres to open-close principle by extending the payment protocl with a new payment type (Mastercard)
fileprivate class MasterCardPayment: PaymentProtocol {
    func makePayment(amount: Double) {
        // perform mastercard payment
    }
}

fileprivate class PaymentManager {
    func makePayment(amount: Double, payment: PaymentProtocol) {
        payment.makePayment(amount: amount)
    }
}
