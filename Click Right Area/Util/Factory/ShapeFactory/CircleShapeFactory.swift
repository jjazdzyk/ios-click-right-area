//
//  CircleShapeFactory.swift
//  Click Right Area
//
//  Created by Jakub Jażdżyk on 30.07.2018.
//  Copyright © 2018 Jakub Jażdżyk. All rights reserved.
//

import UIKit

struct CircleShapeFactory: ShapeFactory {
    
    var minCoefficient: CGFloat
    var maxCoefficient: CGFloat
    
    func createShapes() -> (Shape, Shape, Shape) {
        var circleShapes = [CircleShape]()
        
        for _ in 0..<numberOfShapesInGameView {
            let radius = CGFloat.randomBetween(min: minCoefficient, max: maxCoefficient) / CGFloat(2.0)
            circleShapes.append(CircleShape(radius: radius))
        }
        
        return (circleShapes[0], circleShapes[1], circleShapes[2])
    }
    
    
}
