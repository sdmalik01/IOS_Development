//
//  DetailViewController.swift
//  FoodMenu
//
//  Created by mgm vfx on 08/04/26.
//

import UIKit

class DetailViewController: UIViewController {
    
    var item: FoodItem?
    
    
    @IBOutlet var nameLabel: UILabel!
    
    @IBOutlet var PriceLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        nameLabel.text = item?.name
        PriceLabel.text = "Rs. \(item?.price ?? 0)"

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func addToCart(_ sender: UIButton) {
        CartManager.shared.selectedItem = item
        tabBarController?.selectedIndex = 1
    }
    

}
