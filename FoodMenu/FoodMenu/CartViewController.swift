//
//  CartViewController.swift
//  FoodMenu
//
//  Created by mgm vfx on 08/04/26.
//

import UIKit

class CartViewController: UIViewController {
    
    
    @IBOutlet var nameLabel: UILabel!
    

    @IBOutlet var priceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let item = CartManager.shared.selectedItem
        nameLabel.text = item?.name ?? "No item"
        priceLabel.text = "/Rs. \(item?.price ?? 0)"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
