//
//  LSP_Before.swift
//  SOLID_Principles
//
//  Created by Alex Nagy on 18.12.2021.
//

import Foundation

// Liskov Substitution Principle
// Objects should be replaced with instances of their subclasses without altering their behavior

fileprivate class Rectangle {
    
    var width: Float = 0
    var height: Float = 0
    
    func set(width: Float) {
        self.width = width
    }
    
    func set(height: Float) {
        self.height = height
    }
    
    func calculateArea() -> Float {
        return width * height
    }
}


fileprivate class Square: Rectangle {
    override set(width: Float) {
        self.width = width
        self.height = height
    }
    
    override func set(height: Float) {
        self.height = height
        self.width = height
    }
}
// breaks the LSP
fileprivate func setSizeAndPrintArea(of rectangle: Rectangle) {
    rectangle.set(height: 5)
    rectangle.set(width: 4)
    print(rectangle.calculateArea)
}

fileprivate func example() {
    let rectangle = Rectangle()
    setSizeAndPrintArea(of: rectangle) // prints 20
    
    let square = Square()
    setSizeAndPrintArea(of: square) // print 16
}
