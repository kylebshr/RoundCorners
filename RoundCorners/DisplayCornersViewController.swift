//
//  XCornersViewController.swift
//  RoundCorners
//
//  Created by Kyle Bashour on 7/3/18.
//  Copyright © 2018 Kyle Bashour. All rights reserved.
//

import UIKit

class DisplayCornersViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var continuousSwitch: UISwitch!

    private var tabBar: UITabBar {
        return tabBarController!.tabBar
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        toggleTabBar()
        updateCorners()
    }

    @IBAction func updateCorners() {
        let value = round(slider.value * 10) / 10
        label.text = "\(value)"
        view.roundCorners(radius: CGFloat(value), continuous: continuousSwitch.isOn)
    }

    @IBAction func toggleTabBar() {
        if tabBar.frame.origin.y == view.frame.height {
            tabBar.frame.origin.y = view.frame.height - tabBar.frame.height
        } else {
            tabBar.frame.origin.y = view.frame.height
        }
    }
}
