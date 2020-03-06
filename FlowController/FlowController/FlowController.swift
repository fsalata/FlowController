//
//  FlowController.swift
//  FlowController
//
//  Created by Fábio Salata on 06/03/20.
//  Copyright © 2020 Fábio Salata. All rights reserved.
//

import UIKit

protocol FlowController: UIViewController {
    var navigation: UINavigationController { get }
    
    init(navigation: UINavigationController)
    
    func start()
}
