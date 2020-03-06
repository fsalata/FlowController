//
//  AppFlowController.swift
//  FlowController
//
//  Created by Fábio Salata on 06/03/20.
//  Copyright © 2020 Fábio Salata. All rights reserved.
//

import UIKit

class AppFlowController: UIViewController {
    private let navigation = UINavigationController()
    
    func start() {
        let homeFlowController = HomeFlowController(navigation: navigation)
        
        navigation.viewControllers = [homeFlowController]
        
        add(navigation)
        
        homeFlowController.start()
    }
}
