//
//  ShapeViewBuilder.swift
//  Click Right Area
//
//  Created by Jakub Jażdżyk on 30.07.2018.
//  Copyright © 2018 Jakub Jażdżyk. All rights reserved.
//

import UIKit

class ShapeViewBuilder {
    
    var isFilled = true
    var fillColor = Defaults.Colors.shapeFill
    
    var isOutlined = true
    var outlineColor = Defaults.Colors.shapeOutline
    
    private var shapeViewFactory: ShapeViewFactory
    
    init(shapeViewFactory: ShapeViewFactory) {
        self.shapeViewFactory = shapeViewFactory
    }
    
    func buildShapeViewsForShapes(_ shapes: (Shape, Shape, Shape)) -> (ShapeView, ShapeView, ShapeView) {
        let shapeViews = self.shapeViewFactory.makeShapeViewsForShapes(shapes)
        [shapeViews.0, shapeViews.1, shapeViews.2].forEach { self.configureShapeView($0) }
        return shapeViews
    }
    
    private func configureShapeView(_ shapeView: ShapeView) {
        shapeView.isFilled = self.isFilled
        shapeView.fillColor = self.fillColor
        shapeView.isOutlined = self.isOutlined
        shapeView.outlineColor = self.outlineColor
    }
    
}
