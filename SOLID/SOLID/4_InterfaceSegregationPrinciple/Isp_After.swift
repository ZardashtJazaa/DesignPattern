//
//  Isp_After.swift
//  SOLID
//
//  Created by Zardasht on 11/4/22.
//
// Client should not be forced to implenent an interface that it doesn't use.

//Client should not be foreced to depend upon interfaces that they do not use , no code should be forced to depend on methods it does not use.


import Foundation

fileprivate protocol Workable {
    func work()
}

fileprivate protocol Feedable {
    func eat()
}


fileprivate class Human: Workable , Feedable {
    
    func work() {
        print("Working...")
    }
    
    func eat() {
        print("Eating...")
    }
}

fileprivate class Robot: Workable {
    
    func work() {
        print("Working...")
    }
    
}

fileprivate func example() {
    let human = Human()
    human.work() // "working..."
    human.eat() // "eating..."
    
    let robot = Robot()
    robot.work() // "Working as Always"
}
