//
//  CategoryCellTableViewCell.swift
//  Coder Merch
//
//  Created by Bintang Aria Ramadhan on 15/03/21.
//  Copyright © 2021 Starfreak. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    @IBOutlet weak var categoryImageView: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    func updateViews(category: CategoryModel) {
        categoryImageView.image = UIImage(named : category.imageName)
        categoryTitle.text = category.title
    }

}
