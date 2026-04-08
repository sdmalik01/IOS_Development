//
//  ViewController.swift
//  RainbowTaps
//
//  Created by mgm vfx on 07/04/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tabBarItem.badgeValue = "!"
    }
  
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        tabBarItem.badgeValue = nil
    }

}

