//
//  ViewController.swift
//  TrafficSegs
//
//  Created by mgm vfx on 07/04/26.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = textField.text
    }
      
    @IBAction func unwindToRed(unwindsegue: UIStoryboardSegue){
        
    }

}

