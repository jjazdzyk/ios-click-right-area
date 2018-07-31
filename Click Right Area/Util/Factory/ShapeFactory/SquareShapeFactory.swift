//
//  SquareShapeFactory.swift
//  Click Right Area
//
//  Created by Jakub Jażdżyk on 30.07.2018.
//  Copyright © 2018 Jakub Jażdżyk. All rights reserved.
//

import UIKit

struct SquareShapeFactory: ShapeFactory {
    
    var minCoefficient: CGFloat
    var maxCoefficient: CGFloat
    
    func createShapes() -> (Shape, Shape, Shape) {
        var squareShapes = [SquareShape]()
        
        for _ in 0..<numberOfShapesInGameView {
            let sideLength = CGFloat.randomBetween(min: minCoefficient, max: maxCoefficient)
            squareShapes.append(SquareShape(sideLength: sideLength))
        }
        
        return (squareShapes[0], squareShapes[1], squareShapes[2])
    }
    
}
