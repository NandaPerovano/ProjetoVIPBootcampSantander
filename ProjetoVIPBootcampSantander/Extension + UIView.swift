//
//  Extension + UIView.swift
//  ProjetoVIPBootcampSantander
//
//  Created by Fernanda Perovano on 22/10/23.
//

import Foundation
import UIKit

extension UIView {
    
    func pin(to superview: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.topAnchor),
            leadingAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.leadingAnchor),
            trailingAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.trailingAnchor),
            bottomAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
