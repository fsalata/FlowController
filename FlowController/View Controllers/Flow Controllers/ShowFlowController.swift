//
//  ShowFlowController.swift
//  FlowController
//
//  Created by Fábio Salata on 06/03/20.
//  Copyright © 2020 Fábio Salata. All rights reserved.
//

import UIKit

class ShowFlowController: FlowViewController {
    override func start() {
        let firstViewController = FirstViewController()
        
        firstViewController.delegate = self
        
        add(firstViewController)
        
        title = "First View Controller"
    }

}

extension ShowFlowController: FirstViewControllerDelegate {
    func showHandler(viewController: FirstViewController) {
        let secondViewController = SecondViewController()
        navigation.show(secondViewController, sender: self)
    }
}
