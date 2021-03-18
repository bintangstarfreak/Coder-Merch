//
//  Product.swift
//  Coder Merch
//
//  Created by Bintang Aria Ramadhan on 15/03/21.
//  Copyright © 2021 Starfreak. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
    
    
}
