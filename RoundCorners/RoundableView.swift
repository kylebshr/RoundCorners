//
//  RoundableView.swift
//  RoundCorners
//
//  Created by Kyle Bashour on 7/4/18.
//  Copyright © 2018 Kyle Bashour. All rights reserved.
//

import UIKit

@IBDesignable
class RoundableView: UIView {
    @IBInspectable
    var continuousCorners: Bool = true {
        didSet { roundCorners(radius: cornerRadius, continuous: continuousCorners) }
    }

    @IBInspectable
    var cornerRadius: CGFloat = 0 {
        didSet { roundCorners(radius: cornerRadius, continuous: continuousCorners) }
    }
}
