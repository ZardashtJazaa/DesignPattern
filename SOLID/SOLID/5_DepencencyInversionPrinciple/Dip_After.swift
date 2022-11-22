//
//  DIP_After.swift
//  SOLID_Principles
//
//  Created by Zardasht Jaza on 4/11/2022.
//

/*:
 ### Depencency Inversion Principle
 
 "Depend on Abstractions not on Concretions."

High level modules should not depend upon low level modules. Both should depend upon abstractions.
 
Abstractions should not depend upon details. Details should depend upon abstractions.

 */

import Foundation


fileprivate protocol Workable {
    func work()
}

fileprivate struct Employee:Workable {
    func work() {
        print("Working...")
    }
}



fileprivate struct Employer {
    
    var workables: [Workable]
    
    func manage() {
        workables.forEach { workable in
            workable.work()
        }
    }
}

fileprivate func example() {
    let employeer = Employer(workables: [Employee()])
    employeer.manage()
    
}
