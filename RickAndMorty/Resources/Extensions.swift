//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Đình Việt on 30/01/2023.
//

import UIKit

extension UIView {
    func addSubview(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
