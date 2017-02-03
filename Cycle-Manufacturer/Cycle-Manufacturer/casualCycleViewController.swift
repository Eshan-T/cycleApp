//
//  casualCycleViewController.swift
//  Cycle-Manufacturer
//
//  Created by Eshan trivedi on 03/02/17.
//  Copyright © 2017 ET. All rights reserved.
//

import UIKit

class casualCycleViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "casualCell", for: indexPath) as! casualCycleCollectionViewCell
        let image = UIImage(named: images2[indexPath.item])
        cell.cycleImage.image = image
        cell.cyclePrice.text = prices2[indexPath.item]
        cell.cycleRating.text =  ratings2[indexPath.item]
        cell.cycleName.text = name2[indexPath.item]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        cartNames.append(name2[indexPath.item])
        cartPrice.append(prices2[indexPath.item])
        cartRatings.append(ratings2[indexPath.item])
        cartImages.append(images2[indexPath.item])
        let alert = UIAlertController(title: "Alert", message: "Product has been added to cart", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        alert.addAction(UIAlertAction(title: "Remove from Cart", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
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
