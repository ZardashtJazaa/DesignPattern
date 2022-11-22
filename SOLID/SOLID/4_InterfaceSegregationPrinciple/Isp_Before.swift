//
//  Isp_Before.swift
//  SOLID
//
//  Created by Zardasht on 11/4/22.
//

import Foundation

fileprivate protocol Worker {
    func work()
    func eat()
}


fileprivate class Human:Worker {
    func work() {
        print("Working....")
    }
    
    func eat() {
        print("Eating....")
    }
}


//This Robot is Forces to use Eat Functions!!!
fileprivate class Robot:Worker {
    func work() {
        print("Working...")
        
    }
    
    func eat() {
        fatalError("Robot doesn't eat!!!")
    }
}

fileprivate func example() {
    
    let human = Human()
    human.work() // "Working..."
    human.eat() // "Eating..."
    
    let robot = Robot()
    robot.work() // "Working..."
    robot.eat()  // "Error..."
    
}
