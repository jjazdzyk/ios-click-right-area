//
//  ShapeView.swift
//  Click Right Area
//
//  Created by Jakub Jażdżyk on 17.07.2018.
//  Copyright © 2018 Jakub Jażdżyk. All rights reserved.
//

import UIKit

class ShapeView: UIView {

    let halfLineWidth = Defaults.Widths.shapeOutline
    var shape: Shape!
    
    var isFilled: Bool = true {
        didSet {
            setNeedsDisplay()
        }
    }
    
    var fillColor: UIColor = Defaults.Colors.shapeFill {
        didSet {
            setNeedsDisplay()
        }
    }
    
    var isOutlined: Bool = true {
        didSet {
            setNeedsDisplay()
        }
    }
    
    var outlineColor: UIColor = Defaults.Colors.shapeOutline {
        didSet {
            setNeedsDisplay()
        }
    }
    
    var tapHandler: ((ShapeView) -> ())?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        self.addGestureRecognizer(tapRecognizer)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented.")
    }
    
    @objc private func handleTap() {
        tapHandler?(self)
    }

}
