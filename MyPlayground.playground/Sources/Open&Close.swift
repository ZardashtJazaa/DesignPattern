
//  OCP_After.swift
//  SOLID_Principles
//
//  Created by Zardasht Jaza on 11/4/2022
//
/*:
 ## Open-Closed Principle

 "Entities should be open for extension but closed for modification."

 A class is closed, since it may be compiled, stored in a library, baselined, and used by client classes. But it is also open, since any new class may use it as parent, adding new features. When a descendant class is defined, there is no need to change the original or to disturb its clients.
 
 */

import Foundation

//MARK: - Protocol
 protocol PaymentProtocol {
    func makePayment(amount:Double)
}

fileprivate class CashPayment: PaymentProtocol {
    
    
    func makePayment(amount: Double) {
        print("Cash")
    }
}

fileprivate class VisaPayment:PaymentProtocol {
    func makePayment(amount: Double) {
        
        print("Visa")
    }
}

fileprivate class MasterCardPayment:PaymentProtocol {
    func makePayment(amount: Double) {

        print("MasterCard")
    }
}


//MARK: - PaymentManager
fileprivate class PaymentManager {
    
    func makePayment(amount:Double , payment:PaymentProtocol) {
        payment.makePayment(amount: amount)
    }
}

fileprivate let paymentManager = PaymentManager()


//paymentManager.makePayment(amount: 10, payment:VisaPayment())
