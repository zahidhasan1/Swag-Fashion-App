//
//  Category.swift
//  Swag Fashion
//
//  Created by ZEUS on 28/7/19.
//  Copyright © 2019 ZEUS. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
