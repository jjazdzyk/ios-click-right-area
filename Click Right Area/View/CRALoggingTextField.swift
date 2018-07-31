//
//  CRALoggingTextField.swift
//  Click Right Area
//
//  Created by Jakub Jażdżyk on 31.07.2018.
//  Copyright © 2018 Jakub Jażdżyk. All rights reserved.
//

import UIKit
import ConstraintLib

class CRALoggingTextField: UITextField {
    
    private let padding = UIEdgeInsets(top: 0.0, left: 7.5, bottom: 0.0, right: 7.5)

    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpTextField()
        setUpConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented.")
    }
    
    private func setUpTextField() {
        self.backgroundColor = Defaults.Colors.fieldsBackground
        self.layer.cornerRadius = Defaults.CornerRadius.loggingField
        self.frame.size.width = Defaults.Widths.loggingField
        self.frame.size.height = Defaults.Heights.loggingField
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(self.bounds, self.padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(self.bounds, self.padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(self.bounds, self.padding)
    }
    
    private func setUpConstraints() {
        pin([.height, .width])
    }

}
