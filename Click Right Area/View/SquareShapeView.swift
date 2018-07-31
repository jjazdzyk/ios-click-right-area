//
//  SquareShapeView.swift
//  Click Right Area
//
//  Created by Jakub Jażdżyk on 17.07.2018.
//  Copyright © 2018 Jakub Jażdżyk. All rights reserved.
//

import UIKit

class SquareShapeView: ShapeView {
    
    override func draw(_ rect: CGRect) {
        if self.isFilled {
            self.fillColor.setFill()
            let fillPath = UIBezierPath(rect: rect)
            fillPath.fill()
        }
        
        if self.isOutlined {
            self.outlineColor.setStroke()
            
            let outlinePath = UIBezierPath(rect: CGRect(x: halfLineWidth, y: halfLineWidth, width: self.bounds.size.width - 2 * halfLineWidth, height: self.bounds.size.height - 2 * halfLineWidth))
            outlinePath.lineWidth = 2.0 * halfLineWidth
            outlinePath.stroke()
        }
    }
    
}
