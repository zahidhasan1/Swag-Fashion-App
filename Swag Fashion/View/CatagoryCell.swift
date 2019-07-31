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

    func updateViews(category: Category){
        catagoryImage.image = UIImage(named: category.imageName)
        catagoryLabel.text = category.title
    }
}
