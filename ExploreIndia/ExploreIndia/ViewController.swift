//
//  ViewController.swift
//  ExploreIndia
//
//  Created by mgm vfx on 03/04/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var placeName: UITextField!

    @IBOutlet var placeView: UIImageView!
    
    @IBOutlet var placeInfo: UILabel!
    
    var i = 0
    var images = ["Taj Mahal","Delhi gate","Golden Temple","Jaipur", "red Fort"]
    
    var info = ["Taj mahal is in agra!","Delhi gate is in delhi","Golden temple is located in amritsar","Hawa mahel is located in jaipur","Red fort is where the independece parade is executed!"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
     
    
    @IBAction func showNext(_ sender: Any) {
        guard let userinput = placeName.text?.lowercased() else {return}
        
        for index in 0..<images.count{
            if userinput == images[index].lowercased(){
                
                placeView.image = UIImage(named: images[index])
                placeInfo.text = info[index]
            }
        }
    }
    
    

}

