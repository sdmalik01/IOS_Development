//
//  ViewController.swift
//  Hello_App
//
//  Created by mgm vfx on 02/04/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonPressed(_ sender: Any) {
        myLabel.text = "Helowww"
        myLabel.backgroundColor = .red
        myButton.backgroundColor = .blue
        
    }
    
}





