//
//  sportsCycleViewController.swift
//  Cycle-Manufacturer
//
//  Created by Eshan trivedi on 03/02/17.
//  Copyright © 2017 ET. All rights reserved.
//

import UIKit
extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(netHex:Int) {
        self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
    }
}


class sportsCycleViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet var sportsCycleCollection: UICollectionView!
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sportsCell", for: indexPath) as! sportsCycleCollectionViewCell
        let image = UIImage(named: images1[indexPath.item])
        cell.cycleImage.image = image
        cell.cyclePrice.text = prices1[indexPath.item]
        cell.cycleRating.text =  ratings1[indexPath.item]
        cell.cycleName.text = name1[indexPath.item]
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationController?.navigationBar.barTintColor = UIColor(netHex: 0xEE534F)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        cartNames.append(name1[indexPath.item])
        cartPrice.append(prices1[indexPath.item])
        cartRatings.append(ratings1[indexPath.item])
        cartImages.append(images1[indexPath.item])
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
