//
//  ProductCategory.swift
//  Coder Merch
//
//  Created by Bintang Aria Ramadhan on 15/03/21.
//  Copyright © 2021 Starfreak. All rights reserved.
//

import UIKit

class ProductCategory: UICollectionViewCell {
    @IBOutlet weak var productItemImage: UIImageView!
    @IBOutlet weak var productItemTitle: UILabel!
    @IBOutlet weak var productItemPrice: UILabel!
    
    //fungsi untuk mengisi item pada collection / table view
    func updateViews(product: Product) {
        self.productItemImage.image = UIImage(named: product.imageName)
        self.productItemTitle.text = product.title
        self.productItemPrice.text = product.price
    }

}


