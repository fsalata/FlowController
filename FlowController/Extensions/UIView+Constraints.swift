//
//  UIViewController+Constraints.swift
//  FlowController
//
//  Created by Fábio Salata on 06/03/20.
//  Copyright © 2020 Fábio Salata. All rights reserved.
//

import UIKit

extension UIView {    
    func pinEdgesToSuperview(_ offset: CGFloat = 0.0) {
        guard let superview = self.superview else {
            return
        }
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.leftAnchor.constraint(equalTo: superview.leftAnchor, constant: offset).isActive = true
        self.rightAnchor.constraint(equalTo: superview.rightAnchor, constant: offset).isActive = true
        self.bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: offset).isActive = true
        self.topAnchor.constraint(equalTo: superview.topAnchor, constant: offset).isActive = true
    }
}
