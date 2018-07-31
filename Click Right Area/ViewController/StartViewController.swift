//
//  StartViewController.swift
//  Click Right Area
//
//  Created by Jakub Jażdżyk on 31.07.2018.
//  Copyright © 2018 Jakub Jażdżyk. All rights reserved.
//

import UIKit
import ConstraintLib

class StartViewController: UIViewController {
    
    private var startView: StartView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.startView = StartView(frame: self.view.frame)
        self.view.addSubview(startView)
    }

}
