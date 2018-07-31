//
//  EquilateralTriangleShapeFactory.swift
//  Click Right Area
//
//  Created by Jakub Jażdżyk on 30.07.2018.
//  Copyright © 2018 Jakub Jażdżyk. All rights reserved.
//

import UIKit

struct EquilateralTriangleShapeFactory: ShapeFactory {
    
    var minCoefficient: CGFloat
    var maxCoefficient: CGFloat
    
    func createShapes() -> (Shape, Shape, Shape) {
        var triangleShapes = [EquilateralTriangleShape]()
        
        for _ in 0..<numberOfShapesInGameView {
            let sideLength = CGFloat.randomBetween(min: minCoefficient, max: maxCoefficient)
            triangleShapes.append(EquilateralTriangleShape(sideLength: sideLength))
        }
        
        return (triangleShapes[0], triangleShapes[1], triangleShapes[2])
    }
    
}
