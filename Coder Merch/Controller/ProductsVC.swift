//
//  ProductsVCViewController.swift
//  Coder Merch
//
//  Created by Bintang Aria Ramadhan on 15/03/21.
//  Copyright © 2021 Starfreak. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController {
    
    //memberi nama variabel dengan kategori produk di dataservice
    var products = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //penampung dan melakukan panggilan dari categoriesVC
    func initProducts(category: CategoryModel) {
        products = DataService.instance.getProducts(category: category.title)
    
    }
}

//
extension ProductsVC: UICollectionViewDelegate,UICollectionViewDataSource {
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return products.count
}

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCategory {
        cell.updateViews(product: products[indexPath.row])
        return cell
    }
    return UICollectionViewCell()
    }

}



