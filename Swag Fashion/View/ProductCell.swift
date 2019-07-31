//
//  ProductCell.swift
//  Swag Fashion
//
//  Created by ZEUS on 31/7/19.
//  Copyright © 2019 ZEUS. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateViews(product: Product)   {
        productImage.image = UIImage(named: product.imgName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
}
