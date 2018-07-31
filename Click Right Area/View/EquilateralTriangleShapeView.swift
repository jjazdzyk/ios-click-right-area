//
//  EquilateralTriangleShapeView.swift
//  Click Right Area
//
//  Created by Jakub Jażdżyk on 30.07.2018.
//  Copyright © 2018 Jakub Jażdżyk. All rights reserved.
//

import UIKit

class EquilateralTriangleShapeView: ShapeView {

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
        
        if self.isOutlined {
            self.outlineColor.setFill()
            let outlinePath = triangleOutlinePath(in: rect)
            outlinePath.fill()
        }
        
        if self.isFilled {
            self.fillColor.setFill()
            let fillPath = trianglePath(in: rect)
            fillPath.fill()
        }
        
    }
    
    private func triangleOutlinePath(in rect: CGRect) -> UIBezierPath {
        let path = UIBezierPath()
        
        let point1 = CGPoint(x: 0.0, y: rect.width)
        let point2 = CGPoint(x: rect.width, y: rect.width)
        let point3 = CGPoint(x: rect.width / 2, y: rect.width - rect.width * sqrt(3.0) / 2)
        
        path.move(to: point1)
        path.addLine(to: point2)
        path.addLine(to: point3)
        path.close()
        
        return path
    }
    
    private func trianglePath(in rect: CGRect) -> UIBezierPath {
        let path = UIBezierPath()
        let lineWidth = 2.0 * halfLineWidth
        path.lineWidth = lineWidth
        
        let point1 = CGPoint(x: 2 * lineWidth, y: rect.width - lineWidth)
        let point2 = CGPoint(x: rect.width - 2 * lineWidth, y: rect.width - lineWidth)
        let point3 = CGPoint(x: rect.width / 2, y: rect.width - rect.width * sqrt(3.0) / 2 + 2 * lineWidth)
        
        path.move(to: point1)
        path.addLine(to: point2)
        path.addLine(to: point3)
        path.close()
        
        return path
    }

}
