//
//  ContactTableViewCell.swift
//  Cycle-Manufacturer
//
//  Created by Eshan trivedi on 03/02/17.
//  Copyright © 2017 ET. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {
    @IBOutlet var Title: UILabel!

    @IBOutlet var Subtitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
