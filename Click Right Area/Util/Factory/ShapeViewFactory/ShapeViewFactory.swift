//
//  ShapeViewFactory.swift
//  Click Right Area
//
//  Created by Jakub Jażdżyk on 30.07.2018.
//  Copyright © 2018 Jakub Jażdżyk. All rights reserved.
//

import UIKit

protocol ShapeViewFactory {
    var size: CGSize { get set }
    func makeShapeViewsForShapes(_ shapes: (Shape, Shape, Shape)) -> (ShapeView, ShapeView, ShapeView)
}
