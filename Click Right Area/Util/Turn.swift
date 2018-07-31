//
//  Turn.swift
//  Click Right Area
//
//  Created by Jakub Jażdżyk on 30.07.2018.
//  Copyright © 2018 Jakub Jażdżyk. All rights reserved.
//

import UIKit

struct Turn {
    
    let shapes: [Shape]
    
    func wasTurnCompletedWithSuccess(for tappedShape: Shape) -> Bool {
        return tappedShape.area >= self.maxArea
    }
    
    private var maxArea: CGFloat {
        if shapes[0].area > shapes[1].area {
            return shapes[0].area > shapes[2].area ? shapes[0].area : shapes[2].area
        } else {
            return shapes[1].area > shapes[2].area ? shapes[1].area : shapes[2].area
        }
    }
    
}
