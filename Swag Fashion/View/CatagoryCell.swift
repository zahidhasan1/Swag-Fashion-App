//
//  CatagoryCell.swift
//  Swag Fashion
//
//  Created by ZEUS on 28/7/19.
//  Copyright © 2019 ZEUS. All rights reserved.
//

import UIKit

class CatagoryCell: UITableViewCell {
    
    @IBOutlet weak var catagoryImage: UIImageView!
    @IBOutlet weak var catagoryLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
