//
//  StartView.swift
//  Click Right Area
//
//  Created by Jakub Jażdżyk on 31.07.2018.
//  Copyright © 2018 Jakub Jażdżyk. All rights reserved.
//

import UIKit
import ConstraintLib

class StartView: UIView {
    
    private let betweenFieldsDistance: CGFloat = 10.0

    private var loginField: CRALoggingTextField = {
        let field = CRALoggingTextField(frame: .zero)
        field.placeholder = "Login"
        return field
    }()
    
    private var passwordField: CRALoggingTextField = {
        let field = CRALoggingTextField(frame: .zero)
        field.placeholder = "Password"
        field.isSecureTextEntry = true
        return field
    }()
    
    private var signInButton: CRAButton = {
        let button = CRAButton(frame: .zero)
        button.setTitle("Sign in", for: .normal)
        return button
    }()
    
    private var fieldsContainer: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpUI()
        setUpConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented.")
    }
    
    override func didMoveToSuperview() {
        self.pin([.top, .left, .right, .bottom])
        self.layoutIfNeeded()
    }
    
    private func setUpUI() {
        self.backgroundColor = Defaults.Colors.background
        
        let fieldsContainerHeight: CGFloat = 2 * Defaults.Heights.loggingField + 2 * betweenFieldsDistance + Defaults.Heights.button
        self.fieldsContainer = UIView(frame: CGRect(x: 0.0, y: 0.0, width: Defaults.Widths.loggingField, height: fieldsContainerHeight))
        self.addSubview(fieldsContainer)
        
        self.fieldsContainer.addSubview(self.loginField)
        self.fieldsContainer.addSubview(self.passwordField)
        self.fieldsContainer.addSubview(self.signInButton)
    }
    
    private func setUpConstraints() {
        self.fieldsContainer.pin([.centerX, .centerY])
        
        self.loginField.pin([.left, .right, .top])
        self.passwordField.pin([.left, .right, .bottom])
        _ = self.passwordField.pin(.topTo(self.loginField), constant: Float(betweenFieldsDistance))
        self.signInButton.pin([.centerX])
        _ = self.signInButton.pin(.topTo(self.passwordField), constant: Float(betweenFieldsDistance))
    }

}
