//
//  Dip_Before.swift
//  SOLID
//
//  Created by Zardasht on 11/4/22.
//

import Foundation

fileprivate struct Employee {
    
    func work() {
        print("Working...")
    }
}

fileprivate struct Employer {
    
    var employees: [Employee]
    
    func manage() {
        employees.forEach { employee in
            employee.work()
        }
    }
}

fileprivate func example() {
    let employer = Employer(employees: [Employee()])
    employer.manage() // Print "Working..."
}
