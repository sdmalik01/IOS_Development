//
//  ViewController.swift
//  ComInputControls
//
//  Created by mgm vfx on 03/04/26.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var buttonTab: UIButton!
    
    @IBOutlet var NoticeLabel: UILabel!
    
    @IBOutlet var SlidderValue: UILabel!
    
    @IBOutlet var TextFiled: UILabel!
    
    @IBOutlet var Toggle: UISwitch!
    
    @IBOutlet var Slider: UISlider!
    
    @IBOutlet var LocationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SwitchToggle(_ sender: UISwitch) {
        if sender.isOn {
            print("The Switch is On!")
            NoticeLabel.text = "The Switch is On!"
            NoticeLabel.textColor = .white
            NoticeLabel.backgroundColor = .systemGreen
        }
        else{
            print("The Switch is Off!")
            NoticeLabel.text = "The Switch is Off!"
            NoticeLabel.textColor = .systemGreen
            NoticeLabel.backgroundColor = .white
        }
        
    }
    
    
    @IBAction func buttonPress(_ sender: Any) {
        print("The Button was pressed!")
        
        if Toggle.isOn {
            print("The Toggle is On!")
            NoticeLabel.text = "The Toggle is On!"
            NoticeLabel.textColor = .white
            NoticeLabel.backgroundColor = .systemGreen
        }
        else{
            print("The Toggle is Off!")
            NoticeLabel.text = "The Toggle is Off!"
            NoticeLabel.textColor = .systemGreen
            NoticeLabel.backgroundColor = .white
        }
        
        print(Slider.value)
        SlidderValue.text = "\(Int(Slider.value))"
    }
    
    @IBAction func SlidderChanged(_ sender: UISlider) {
        print(sender.value)
        SlidderValue.text = "\(Int(sender.value))"
    }
    
    @IBAction func ReturnTab(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    
    
    @IBAction func EdittingChnaged(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
            TextFiled.text = text
        }
    }
    
    
    @IBAction func RespondTapGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: self.view)
        print("You tapped at \(location)")
        LocationLabel.text = "You tapped at \(location)"
    }
    
}

