//
//  HomeFlowController.swift
//  FlowController
//
//  Created by Fábio Salata on 06/03/20.
//  Copyright © 2020 Fábio Salata. All rights reserved.
//

import UIKit

class HomeFlowController: FlowViewController {
    override func start() {
        let homeViewController = HomeViewController()
        
        homeViewController.delegate = self
        
        add(homeViewController)
        
        title = "Home"
    }

}

extension HomeFlowController: HomeViewControllerDelegate {
    func showHandler(viewController: HomeViewController) {
        let showFlowController = ShowFlowController(navigation: navigation)
        
        showFlowController.start()
        
        navigation.show(showFlowController, sender: self)
    }
    
    func popOverHandler(viewController: HomeViewController) {
        let popOverFlowController = PopOverShowController(navigation: navigation)
        
        popOverFlowController.start()
        
        navigation.present(popOverFlowController, animated: true, completion: nil)
    }
}
