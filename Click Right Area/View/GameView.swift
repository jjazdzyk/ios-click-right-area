//
//  GameView.swift
//  Click Right Area
//
//  Created by Jakub Jażdżyk on 17.07.2018.
//  Copyright © 2018 Jakub Jażdżyk. All rights reserved.
//

import UIKit
import ConstraintLib

class GameView: UIView {
    
    private(set) var gameScore = 0
    
    private enum GameScoreState {
        case negative, zero, positive
    }
    
    private var lastState: GameScoreState = .zero
    
    private var sixthPartOfSelfHeight: CGFloat {
        return self.frame.size.height / 6
    }
    
    lazy var scoreLabel: UILabel = {
        let label = UILabel()
        label.text = "Score: \(self.gameScore)"
        label.font = Defaults.Fonts.boldNormal
        label.textColor = Defaults.Colors.zeroFont
        label.sizeToFit()
        return label
    }()
    
    private var shapeViews: (ShapeView, ShapeView, ShapeView)?

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = Defaults.Colors.background
        self.addSubview(scoreLabel)
        setUpConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented.")
    }
    
    func addNewShapeViews(newShapeViews: (ShapeView, ShapeView, ShapeView)) {
        [self.shapeViews?.0, self.shapeViews?.1, self.shapeViews?.2].forEach { $0?.removeFromSuperview() }
        self.shapeViews = newShapeViews
        [self.shapeViews!.0, self.shapeViews!.1, self.shapeViews!.2].forEach { self.addSubview($0) }        
        setUpConstraintsForShapeViews()
    }
    
    func updateScore(with turnScore: Int) {
        self.gameScore += turnScore
        self.scoreLabel.text = "Score: \(self.gameScore)"
        
        let currentState = currentGameScoreState()
        if self.lastState != currentState {
            self.lastState = currentState
            updateScoreLabelFor(state: currentState)
        }
    }
    
    override func didMoveToSuperview() {
        self.pin([.top, .left, .right, .bottom])
        self.layoutIfNeeded()
    }
    
    private func setUpConstraints() {
        self.scoreLabel.pin([.centerX])
        self.scoreLabel.pin([.top: 25.0])
    }
    
    private func setUpConstraintsForShapeViews() {
        var heightCoefficient: CGFloat = 1
        [self.shapeViews?.0, self.shapeViews?.1, self.shapeViews?.2].forEach { shapeView in
            shapeView?.center.x = self.center.x
            shapeView?.center.y = heightCoefficient * sixthPartOfSelfHeight
            heightCoefficient += 2
        }
    }
    
    private func currentGameScoreState() -> GameScoreState {
        if self.gameScore > 0 {
            return .positive
        } else if self.gameScore == 0 {
            return .zero
        } else {
            return .negative
        }
    }
    
    private func updateScoreLabelFor(state: GameScoreState) {
        switch state {
            case .positive:
                self.scoreLabel.textColor = Defaults.Colors.positiveFont
            case .zero:
                self.scoreLabel.textColor = Defaults.Colors.zeroFont
            case .negative:
                self.scoreLabel.textColor = Defaults.Colors.negativeFont
        }
    }
}
