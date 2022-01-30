//
//  LSP_After.swift
//  SOLID_Principles
//
//  Created by Alex Nagy on 18.12.2021.
//

/*:
 ### Liskov Substitution Principle
 [Wikipedia](https://en.wikipedia.org/wiki/Liskov_substitution_principle)

 "Objects should be replaced with instances of their subclasses without altering the behaviour."

 If S is a subtype of T, then objects of type T may be replaced with objects of type S without altering any of the desirable properties of the program.

 */

import Foundation

fileprivate protocol Polygon {
    func calculateArea() -> Float
}

fileprivate class Rectangle: Polygon {
    var width: Float = 0
    var height: Float = 0
    
    func calculateArea() {
        return width * height
    }
    
    func set(width: Float) {
        self.width = width
    }
    
    func set(height: Float) {
        self.height = height
    }
}

fileprivate class Square: Polygon {
    var side: Float = 0
    
    func set(side: Float) {
        self.side = side
    }
    
    func calculateArea() -> Float {
        return pow(side, 2)
    }
}

fileprivate func printArea(of polygon: Polygon) {
    print(polygon.calculateArea)
}

fileprivate func example() {
    let rectangle = Rectangle()
    rectangle.set(width: 5)
    rectangle.set(height: 4)
    printArea(of: rectangle)
    
    let square = Square()
    rectangle.set(side: 4)
    printArea(of: square)
}
