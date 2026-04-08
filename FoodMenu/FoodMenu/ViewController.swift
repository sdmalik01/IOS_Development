//
//  ViewController.swift
//  FoodMenu
//
//  Created by mgm vfx on 08/04/26.
//

import UIKit

class ViewController: UIViewController {
    
    var selectedItem: FoodItem?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! DetailViewController
        destination.item = selectedItem
    }
    
    @IBAction func BurgerTap(_ sender: UIButton) {
        selectedItem = FoodItem(name: "Burger", price: 200.0)
        performSegue(withIdentifier: "showDetail", sender: self)
    }
    
    
    @IBAction func PizzaTap(_ sender: UIButton) {
        selectedItem = FoodItem(name: "Pizza", price: 300.0)
        performSegue(withIdentifier: "showDetail", sender: self)
    }
    
    
    @IBAction func Friestap(_ sender: UIButton) {
        selectedItem = FoodItem(name: "Fries", price: 100.0)
        performSegue(withIdentifier: "showDetail", sender: self)
    }
    
    
    @IBAction func ColdTeaTap(_ sender: UIButton) {
        selectedItem = FoodItem(name: "Cold Tea", price: 200.0)
        performSegue(withIdentifier: "showDetail", sender: self)
    }
    
    
    
    
    
    
}

