//
//  HomeViewController.swift
//  FlowController
//
//  Created by Fábio Salata on 06/03/20.
//  Copyright © 2020 Fábio Salata. All rights reserved.
//

import UIKit

protocol HomeViewControllerDelegate: AnyObject {
    func showHandler(viewController: HomeViewController)
    func popOverHandler(viewController: HomeViewController)
}

class HomeViewController: UIViewController {
    weak var delegate: HomeViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showHandler(_ sender: Any) {
        delegate?.showHandler(viewController: self)
    }
    
    @IBAction func popoverHandler(_ sender: Any) {
        delegate?.popOverHandler(viewController: self)
    }
    
}
