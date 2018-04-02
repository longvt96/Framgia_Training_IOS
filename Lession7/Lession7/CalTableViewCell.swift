//
//  CalTableViewCell.swift
//  Lession7
//
//  Created by ThanhLong on 4/2/18.
//  Copyright © 2018 ThanhLong. All rights reserved.
//

import UIKit

class CalTableViewCell: UITableViewCell {

    @IBOutlet weak var lbltime: UILabel!
    @IBOutlet weak var lblname: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
