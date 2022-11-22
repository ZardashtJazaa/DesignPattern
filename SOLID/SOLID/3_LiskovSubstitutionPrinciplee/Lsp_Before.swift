//
//  LSP_Before.swift
//  SOLID_Principles
//
//  Created by Zardasht Jaza on 4.11.2022.
//

import Foundation


fileprivate class Rectangle {
    
    var height: Float = 0
    var width: Float = 0
    
    func set(height:Float) {
        self.height = height
    }
    
    func set(width:Float) {
        self.width = width
    }
    
    func calculateArea() -> Float {
        return width * height
    }
}


fileprivate class Square:Rectangle {
    
    override func set(width: Float) {
        self.width = width
        self.height = height
    }
    
    override func set(height: Float) {
        self.width = height
        self.height = height
    }
    
}

//Break LSP
fileprivate func setSizeAndPrintArea(of rectangle:Rectangle) {
    
    rectangle.set(height: 5)
    rectangle.set(width: 4)
    print(rectangle.calculateArea())
}


fileprivate func example() {
    
    let rectangle = Rectangle()
    setSizeAndPrintArea(of: rectangle) // print 20
    
    let square = Square()
    setSizeAndPrintArea(of: square) // print 16
}
