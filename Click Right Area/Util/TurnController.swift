//
//  TurnController.swift
//  Click Right Area
//
//  Created by Jakub Jażdżyk on 30.07.2018.
//  Copyright © 2018 Jakub Jażdżyk. All rights reserved.
//

import Foundation

class TurnController {
    
    private var scoreIncrement: Int
    
    var currentTurn: Turn?
    var pastTurns: [Turn]?
    
    private let turnStrategy: Strategy?
    
    init(strategy: Strategy) {
        self.pastTurns = [Turn]()
        
        self.turnStrategy = strategy
        self.scoreIncrement = strategy.scoreIncrement
    }
    
    func beginNewTurn() -> (ShapeView, ShapeView, ShapeView) {
        let shapeViews = self.turnStrategy!.makeShapeViewsForNextTurn()
        self.currentTurn = Turn(shapes: [shapeViews.0.shape, shapeViews.1.shape, shapeViews.2.shape])
        return shapeViews
    }
    
    func endTurnWithTappedShape(_ tappedShape: Shape) -> Int {
        guard let currentTurn = self.currentTurn else { return 0 }
        self.pastTurns!.append(currentTurn)
        
        return (currentTurn.wasTurnCompletedWithSuccess(for: tappedShape) ? 1 : -1) * self.scoreIncrement
    }
    
}
