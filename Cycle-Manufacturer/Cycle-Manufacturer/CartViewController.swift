//
//  CartViewController.swift
//  Cycle-Manufacturer
//
//  Created by Eshan trivedi on 03/02/17.
//  Copyright © 2017 ET. All rights reserved.
//

import UIKit

class CartViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet var subTotal: UILabel!
var sum  = 0.0
    @IBOutlet var cartview: UICollectionView!
    @IBOutlet var taxesOnTotal: UILabel!
    @IBOutlet var toal: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
       for index in  0...cartPrice.count-1
       {
         sum = Double(cartPrice[index])! + sum
        }
        
        var taxes = 0.1 * sum
        var total = taxes + sum
  subTotal.text  = "\(sum)"
        taxesOnTotal.text = "\(taxes)"
        toal.text = "\(total)"
        // Do any additional setup after loading the view.
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cartNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cartCell", for: indexPath) as! CartCollectionViewCell
        let image = UIImage(named: cartImages[indexPath.item])
        cell.cycleImage.image = image
        cell.cyclePrice.text = cartPrice[indexPath.item]
        
        cell.cycleName.text = cartNames[indexPath.item]
        
     
        let alert = UIAlertController(title: "Alert", message: "Product has been removed from the cart", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)

        
        
        
        return cell
    }

    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        cartview.reloadData()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
