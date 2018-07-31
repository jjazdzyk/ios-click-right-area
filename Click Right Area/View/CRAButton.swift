//
//  CRAButton.swift
//  Click Right Area
//
//  Created by Jakub Jażdżyk on 31.07.2018.
//  Copyright © 2018 Jakub Jażdżyk. All rights reserved.
//

import UIKit
import ConstraintLib

class CRAButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpUI()
        setUpConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented.")
    }
    
    private func setUpUI() {
        self.backgroundColor = Defaults.Colors.buttonBackground
        
        self.layer.cornerRadius = Defaults.CornerRadius.button
        self.layer.borderColor = Defaults.Colors.buttonBorder.cgColor
        self.layer.borderWidth = Defaults.Widths.buttonBorder
        
        self.titleLabel?.textColor = Defaults.Colors.buttonFont
        self.titleLabel?.font = Defaults.Fonts.boldNormal
        
        self.frame.size.width = Defaults.Widths.button
        self.frame.size.height = Defaults.Heights.button
    }
    
    private func setUpConstraints() {
        pin([.height, .width])
    }

}
