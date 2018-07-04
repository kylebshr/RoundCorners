//
//  ViewController.swift
//  RoundCorners
//
//  Created by Kyle Bashour on 7/3/18.
//  Copyright © 2018 Kyle Bashour. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var continuousSwitch: UISwitch!

    private let maskLayer = CAShapeLayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateCorners()
    }

    @IBAction func updateCorners() {
        let value = round(slider.value * 10) / 10
        label.text = "\(value)"
        roundCorners(radius: CGFloat(value))
    }

    private func roundCorners(radius: CGFloat) {
        maskLayer.path = continuousSwitch.isOn ? continuousPath(radius: radius) : roundPath(radius: radius)
        view.layer.mask = maskLayer
    }

    private func continuousPath(radius: CGFloat) -> CGPath {
        let radii = CGSize(width: radius, height: radius)
        return UIBezierPath(roundedRect: view.bounds, byRoundingCorners: .allCorners, cornerRadii: radii).cgPath
    }

    private func roundPath(radius: CGFloat) -> CGPath {
        return CGPath(roundedRect: view.bounds, cornerWidth: radius, cornerHeight: radius, transform: nil)
    }
}
