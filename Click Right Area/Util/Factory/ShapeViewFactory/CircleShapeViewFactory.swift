//
//  CircleShapeViewFactory.swift
//  Click Right Area
//
//  Created by Jakub Jażdżyk on 30.07.2018.
//  Copyright © 2018 Jakub Jażdżyk. All rights reserved.
//

import UIKit

struct CircleShapeViewFactory: ShapeViewFactory {
    
    var size: CGSize
    
    func makeShapeViewsForShapes(_ shapes: (Shape, Shape, Shape)) -> (ShapeView, ShapeView, ShapeView) {
        let shapesList = [shapes.0, shapes.1, shapes.2]
        var circleShapeViews = [CircleShapeView]()
        
        for shape in shapesList {
            guard let circleShape = shape as? CircleShape else { return (ShapeView(), ShapeView(), ShapeView()) }
            circleShapeViews.append(CircleShapeView(frame: CGRect(x: 0.0, y: 0.0, width: 2 * circleShape.radius * size.width, height: 2 * circleShape.radius * size.height)))
            circleShapeViews.last!.shape = circleShape
        }
        
        return (circleShapeViews[0], circleShapeViews[1], circleShapeViews[2])
    }
    
}
