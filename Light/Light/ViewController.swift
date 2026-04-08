//
//  ViewController.swift
//  Light
//
//  Created by mgm vfx on 03/04/26.
//

import UIKit

class ViewController: UIViewController {
    var lightOn = true
    
    //@IBOutlet var LightButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    fileprivate func UpdateUI() {
        
        view.backgroundColor = lightOn ? .white : .black
        
        /*if lightOn{
            view.backgroundColor = .black
            LightButton.setTitle("ON", for: .normal)
        }
        else{
            view.backgroundColor = .white
            LightButton.setTitle("OFF", for: .normal)
        }*/
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        lightOn.toggle()
        UpdateUI()
        
    }
    
}

