//
//  ShapeFactory.swift
//  Click Right Area
//
//  Created by Jakub Jażdżyk on 30.07.2018.
//  Copyright © 2018 Jakub Jażdżyk. All rights reserved.
//

import UIKit

protocol ShapeFactory {
    var numberOfShapesInGameView: Int { get }
    var minCoefficient: CGFloat { get set }
    var maxCoefficient: CGFloat { get set }
    func createShapes() -> (Shape, Shape, Shape)
}

extension ShapeFactory {
    var numberOfShapesInGameView: Int {
        return 3
    }
}
