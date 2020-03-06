//
//  ShowFirstViewController.swift
//  FlowController
//
//  Created by Fábio Salata on 06/03/20.
//  Copyright © 2020 Fábio Salata. All rights reserved.
//

import UIKit

protocol FirstViewControllerDelegate: AnyObject {
    func showHandler(viewController: FirstViewController)
    func closeHandler(viewController: FirstViewController)
}

extension FirstViewControllerDelegate {
    func closeHandler(viewController: FirstViewController) {}
}

class FirstViewController: UIViewController {
    weak var delegate: FirstViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "First View Controller"
        
        addCloseBarButton()
    }
    
    func addCloseBarButton() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(closeHandler))
    }
    
    @objc func closeHandler() {
        delegate?.closeHandler(viewController: self)
    }

    @IBAction func showHandler(_ sender: Any) {
        delegate?.showHandler(viewController: self)
    }

}
