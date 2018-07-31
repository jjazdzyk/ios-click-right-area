//
//  Shape.swift
//  Click Right Area
//
//  Created by Jakub Jażdżyk on 17.07.2018.
//  Copyright © 2018 Jakub Jażdżyk. All rights reserved.
//

import UIKit

protocol Shape {
    var area: CGFloat { get }
}

struct SquareShape: Shape {
    
    var sideLength: CGFloat
    var area: CGFloat {
        return sideLength * sideLength
    }
    
}

struct CircleShape: Shape {
    
    var radius: CGFloat
    var area: CGFloat {
        return .pi * radius * radius
    }
    
}

struct EquilateralTriangleShape: Shape {
    
    var sideLength: CGFloat
    var area: CGFloat {
        return sideLength * sideLength * sqrt(3) / 4
    }
    
}
