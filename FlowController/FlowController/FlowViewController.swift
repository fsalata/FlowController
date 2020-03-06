//
//  FlowViewController.swift
//  FlowViewController
//
//  Created by Fábio Salata on 06/03/20.
//  Copyright © 2020 Fábio Salata. All rights reserved.
//

import UIKit

class FlowViewController: UIViewController, FlowController {
    var navigation: UINavigationController
    
    required init(navigation: UINavigationController) {
        self.navigation = navigation
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func start() {
    }
}
