//
//  CircleShapeView.swift
//  Click Right Area
//
//  Created by Jakub Jażdżyk on 30.07.2018.
//  Copyright © 2018 Jakub Jażdżyk. All rights reserved.
//

import UIKit

class CircleShapeView: ShapeView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.isOpaque = false
        self.contentMode = .redraw
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented.")
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        if self.isFilled {
            self.fillColor.setFill()
            let fillPath = UIBezierPath(ovalIn: self.bounds)
            fillPath.fill()
        }
        
        if self.isOutlined {
            self.outlineColor.setStroke()
            let outlinePath = UIBezierPath(ovalIn: CGRect(x: halfLineWidth, y: halfLineWidth,
                                                          width: self.bounds.size.width - 2 * halfLineWidth,
                                                          height: self.bounds.size.height - 2 * halfLineWidth))
            outlinePath.lineWidth = 2.0 * halfLineWidth
            outlinePath.stroke()
        }
    }

}
