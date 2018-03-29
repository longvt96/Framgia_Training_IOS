//
//  CustomcellTableViewCell.swift
//  Lession5
//
//  Created by ThanhLong on 3/29/18.
//  Copyright © 2018 ThanhLong. All rights reserved.
//

import UIKit

class CustomcellTableViewCell: UITableViewCell {

    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var img: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
