//
//  EquilateralTriangleShapeViewFactory.swift
//  Click Right Area
//
//  Created by Jakub Jażdżyk on 30.07.2018.
//  Copyright © 2018 Jakub Jażdżyk. All rights reserved.
//

import UIKit

struct EquilateralTriangleShapeViewFactory: ShapeViewFactory {
    
    var size: CGSize
    
    func makeShapeViewsForShapes(_ shapes: (Shape, Shape, Shape)) -> (ShapeView, ShapeView, ShapeView) {
        let shapesList = [shapes.0, shapes.1, shapes.2]
        var triangleShapeViews = [EquilateralTriangleShapeView]()
        
        for shape in shapesList {
            guard let triangleShape = shape as? EquilateralTriangleShape else { return (ShapeView(), ShapeView(), ShapeView()) }
            triangleShapeViews.append(EquilateralTriangleShapeView(frame: CGRect(x: 0.0, y: 0.0, width: triangleShape.sideLength * size.width, height: triangleShape.sideLength * size.height)))
            triangleShapeViews.last!.shape = triangleShape
        }
        
        return (triangleShapeViews[0], triangleShapeViews[1], triangleShapeViews[2])
    }
    
}
