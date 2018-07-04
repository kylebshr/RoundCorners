//
//  UIView+RoundCorners.swift
//  RoundCorners
//
//  Created by Kyle Bashour on 7/4/18.
//  Copyright © 2018 Kyle Bashour. All rights reserved.
//

import UIKit

extension UIView {
    func roundCorners(radius: CGFloat, continuous: Bool) {
        let maskLayer = CAShapeLayer()
        maskLayer.path = continuous ? continuousPath(radius: radius) : roundPath(radius: radius)
        layer.mask = maskLayer
    }

    private func continuousPath(radius: CGFloat) -> CGPath {
        let radii = CGSize(width: radius, height: radius)
        return UIBezierPath(roundedRect: bounds, byRoundingCorners: .allCorners, cornerRadii: radii).cgPath
    }

    private func roundPath(radius: CGFloat) -> CGPath {
        return CGPath(roundedRect: bounds, cornerWidth: radius, cornerHeight: radius, transform: nil)
    }
}
