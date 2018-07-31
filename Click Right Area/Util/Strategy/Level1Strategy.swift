//
//  Level1Strategy.swift
//  Click Right Area
//
//  Created by Jakub Jażdżyk on 30.07.2018.
//  Copyright © 2018 Jakub Jażdżyk. All rights reserved.
//

import UIKit

class Level1Strategy: Strategy {
    
    var scoreIncrement: Int {
        return 1
    }
    
    private let minCoefficient: CGFloat = 0.1
    private let maxCoefficient: CGFloat = 0.9
    
    private var shapeFactory: ShapeFactory?
    private var shapeViewFactory: ShapeViewFactory?
    private var shapeViewBuilder: ShapeViewBuilder?
    
    func makeShapeViewsForNextTurn() -> (ShapeView, ShapeView, ShapeView) {
        initializeFactories()
        initializeBuilder()
        
        let shapes = self.shapeFactory!.createShapes()
        
        return self.shapeViewBuilder!.buildShapeViewsForShapes(shapes)
    }
    
    private func initializeFactories() {
        self.shapeFactory = SquareShapeFactory(minCoefficient: minCoefficient, maxCoefficient: maxCoefficient)
        self.shapeViewFactory = SquareShapeViewFactory(size: CGSize(width: Defaults.Widths.shapeWidth, height: Defaults.Widths.shapeWidth))
    }
    
    private func initializeBuilder() {
        self.shapeViewBuilder = ShapeViewBuilder(shapeViewFactory: self.shapeViewFactory!)
    }
    
}
