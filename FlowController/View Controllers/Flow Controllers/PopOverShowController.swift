//
//  PopOverShowController.swift
//  FlowController
//
//  Created by Fábio Salata on 06/03/20.
//  Copyright © 2020 Fábio Salata. All rights reserved.
//

import UIKit

class PopOverShowController: FlowViewController {
    private var innerNavigation: UINavigationController!
    
    override func start() {
        let firstViewController = FirstViewController()
        
        firstViewController.delegate = self
        
        innerNavigation = UINavigationController()
        
        innerNavigation.viewControllers = [firstViewController]
        
        add(innerNavigation)
    }
}

extension PopOverShowController: FirstViewControllerDelegate {
    func showHandler(viewController: FirstViewController) {
        let secondViewController = SecondViewController()
        innerNavigation.show(secondViewController, sender: self)
    }
    
    func closeHandler(viewController: FirstViewController) {
        viewController.dismiss(animated: true, completion: nil)
    }
}

