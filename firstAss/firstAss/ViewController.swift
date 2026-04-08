//
//  ViewController.swift
//  firstAss
//
//  Created by mgm vfx on 02/04/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var name: UITextField!
    @IBOutlet var output: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Greet(_ sender: Any) {
        output.text = "Hello! \(name.text!)!"
    }
    
}

