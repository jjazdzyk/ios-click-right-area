//
//  SquareShapeViewFactory.swift
//  Click Right Area
//
//  Created by Jakub Jażdżyk on 30.07.2018.
//  Copyright © 2018 Jakub Jażdżyk. All rights reserved.
//

import UIKit

struct SquareShapeViewFactory: ShapeViewFactory {
    
    var size: CGSize
    
    func makeShapeViewsForShapes(_ shapes: (Shape, Shape, Shape)) -> (ShapeView, ShapeView, ShapeView) {
        let shapesList = [shapes.0, shapes.1, shapes.2]
        var squareShapeViews = [SquareShapeView]()
        
        for shape in shapesList {
            guard let squareShape = shape as? SquareShape else { return (ShapeView(), ShapeView(), ShapeView()) }
            squareShapeViews.append(SquareShapeView(frame: CGRect(x: 0.0, y: 0.0, width: squareShape.sideLength * size.width, height: squareShape.sideLength * size.height)))
            squareShapeViews.last!.shape = squareShape
        }
        
        return (squareShapeViews[0], squareShapeViews[1], squareShapeViews[2])
    }
    
}
