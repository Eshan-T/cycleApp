//
//  contactViewController.swift
//  Cycle-Manufacturer
//
//  Created by Eshan trivedi on 03/02/17.
//  Copyright © 2017 ET. All rights reserved.
//

import UIKit

class contactViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
        
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0
        {
            return 2
        }
        else if section == 1
        {
            return 1
        }
        else if section == 2
        {
            return 1
        }
        else{
            return 2
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0
        {return "Questions about an Issue?"}
        else if section == 1
        {
            return "Question about your order?"
            
        }
        else {
            return "Have Questions or feedback?"
        }
    }
    
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath) as! ContactTableViewCell
        if indexPath.section == 0 && indexPath.row == 0
        {
            cell.Title.text = "E-mail Customer Service"
            
            cell.Subtitle.text = ""
            return cell
        }
        
        
        else if indexPath.section == 0 && indexPath.row == 1
        {
            cell.Title.text = "Call Customer Service"
            
            cell.Subtitle.text = ""
            return cell
        }
        else if indexPath.section == 1 && indexPath.row == 0
        {
            cell.Title.text = "Your Orders"
            
            cell.Subtitle.text = "Track, return or cancel an Order"
            return cell
        }
        else if indexPath.section == 2 && indexPath.row == 0
        {
            cell.Title.text = "Provide Feedback"
            
            cell.Subtitle.text = "We read your feedbacks but don't reply to them"
            return cell
        }
        
        return cell
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
