//
//  Strategy.swift
//  Click Right Area
//
//  Created by Jakub Jażdżyk on 30.07.2018.
//  Copyright © 2018 Jakub Jażdżyk. All rights reserved.
//

import Foundation

protocol Strategy {
    var scoreIncrement: Int { get }
    func makeShapeViewsForNextTurn() -> (ShapeView, ShapeView, ShapeView)
}
