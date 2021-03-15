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
    

}

