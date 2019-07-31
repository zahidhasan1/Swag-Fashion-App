//
//  Model.swift
//  Swag Fashion
//
//  Created by ZEUS on 31/7/19.
//  Copyright © 2019 ZEUS. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imgName: String
    
    init(title: String, price: String, imgName: String) {
        self.title = title
        self.price = price
        self.imgName = imgName
    }
}
