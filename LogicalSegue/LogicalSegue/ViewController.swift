//
//  ViewController.swift
//  LogicalSegue
//
//  Created by mgm vfx on 07/04/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var segueSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func yellowButtonTap(_ sender: Any) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Yellow", sender: nil)
        }
        
    }
    
    @IBAction func greenButtonTap(_ sender: Any) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Green", sender: nil)
        }
        
    }
    
}

