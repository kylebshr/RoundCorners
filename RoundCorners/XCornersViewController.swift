//
//  XCornersViewController.swift
//  RoundCorners
//
//  Created by Kyle Bashour on 7/3/18.
//  Copyright © 2018 Kyle Bashour. All rights reserved.
//

import UIKit

class XCornersViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var continuousSwitch: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateCorners()
    }

    @IBAction func updateCorners() {
        let value = round(slider.value * 10) / 10
        label.text = "\(value)"
        view.roundCorners(radius: CGFloat(value), continuous: continuousSwitch.isOn)
    }
}
