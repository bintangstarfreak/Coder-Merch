//
//  ViewController.swift
//  Coder Merch
//
//  Created by Bintang Aria Ramadhan on 12/03/21.
//  Copyright © 2021 Starfreak. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    //melakukan operan perpindahan page
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC {
            productsVC.initProducts(category: sender as! CategoryModel)
        }
    }


}

extension CategoriesVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "goToProductVC", sender: category)
    }
    

}

