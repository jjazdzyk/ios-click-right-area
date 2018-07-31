//
//  ViewController.swift
//  Click Right Area
//
//  Created by Jakub Jażdżyk on 16.07.2018.
//  Copyright © 2018 Jakub Jażdżyk. All rights reserved.
//

import UIKit


class GameViewController: UIViewController {
    
    private var gameView: GameView!
    
    private var turnController: TurnController!
    
    private var level = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        self.turnController = TurnController(strategy: Level3Strategy())
        beginNextTurn()
    }
    
    private func beginNextTurn() {
        let shapeViews = self.turnController.beginNewTurn()
        
        configureTapHandlers(for: [shapeViews.0, shapeViews.1, shapeViews.2])
        gameView.addNewShapeViews(newShapeViews: shapeViews)
        
        upgradeLevelIfNeeded()
    }
    
    private func configureUI() {
        self.gameView = GameView(frame: self.view.frame)
        self.view.addSubview(self.gameView)
    }
    
    private func configureTapHandlers(for shapeViews: [ShapeView]) {
        shapeViews.forEach { $0.tapHandler = { tappedView in
                let turnScore = self.turnController.endTurnWithTappedShape(tappedView.shape)
                self.gameView.updateScore(with: turnScore)
                self.beginNextTurn()
            }
        }
    }
    
    private func upgradeLevelIfNeeded() {
        if shouldUpgradeLevel() {
            self.level += 1
            changeStrategy()
            showUpgradeLevelAlert()
        }
    }
    
    private func shouldUpgradeLevel() -> Bool {
        return self.gameView.gameScore >= 10 && self.level == 1 ||
            self.gameView.gameScore >= 30 && self.level == 2 ||
            self.gameView.gameScore >= 60 && self.level == 3
    }
    
    private func showUpgradeLevelAlert() {
        let alertController = UIAlertController(title: "Level up!", message: "You reached level \(self.level)", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Great! Let's go on!", style: .default, handler: { _ in
            self.beginNextTurn()
        }))
        self.present(alertController, animated: true, completion: nil)
    }
    
    private func changeStrategy() {
        switch self.level {
        case 1:
            self.turnController = TurnController(strategy: Level1Strategy())
        case 2:
            self.turnController = TurnController(strategy: Level2Strategy())
        case 3:
            self.turnController = TurnController(strategy: Level3Strategy())
        default:
            print("Wrong level!")
        }
    }

}

