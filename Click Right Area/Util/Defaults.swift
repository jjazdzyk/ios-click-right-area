//
//  Defaults.swift
//  Click Right Area
//
//  Created by Jakub Jażdżyk on 16.07.2018.
//  Copyright © 2018 Jakub Jażdżyk. All rights reserved.
//

import UIKit

enum Defaults {
    
    enum Colors {
        static let background = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        static let fieldsBackground = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        static let buttonBackground = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        static let buttonBorder = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        static let shapeFill = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        static let shapeOutline = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        static let zeroFont = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        static let positiveFont = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        static let negativeFont = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        static let buttonFont = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    enum Widths {
        static let shapeOutline: CGFloat = 3.0
        static let shapeWidth: CGFloat = 150.0
        static let loggingField: CGFloat = 180.0
        static let button: CGFloat = 120.0
        static let buttonBorder: CGFloat = 2.0
    }
    
    enum Heights {
        static let loggingField: CGFloat = 40.0
        static let button: CGFloat = 35.0
    }
    
    enum CornerRadius {
        static let loggingField: CGFloat = 5.0
        static let button: CGFloat = 10.0
    }
    
    enum Fonts {
        static let boldNormal = UIFont(name: "KohinoorTelugu-Regular", size: FontSizes.normal)!
    }
    
    private enum FontSizes {
        static let normal: CGFloat = 20.0
    }
    
    
}
