//
//  ViewController.swift
//  BMICalculator
//
//  Created by mgm vfx on 03/04/26.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var Weight: UITextField!
    
    @IBOutlet var Height: UITextField!
    
    @IBOutlet var Result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func CalculateBMI(_ sender: Any) {
        let ht = Double(Height.text!)
        let wt = Double(Weight.text!)
        let result = wt! / (ht! * ht!)
        Result.text = "\(result)"
    }
}

