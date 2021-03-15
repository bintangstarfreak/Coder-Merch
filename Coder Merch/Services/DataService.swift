//
//  Services.swift
//  Coder Merch
//
//  Created by Bintang Aria Ramadhan on 15/03/21.
//  Copyright © 2021 Starfreak. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        CategoryModel(title: "SHIRTS", imageName: "shirts.png"),
        CategoryModel(title: "HOODIES", imageName: "hoodies.png"),
        CategoryModel(title: "HATS", imageName: "hats.png"),
        CategoryModel(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Beanie", price: "Rp. 70000", imageName: "hat01.jpg"),
        Product(title: "Snapback Black", price: "Rp. 100000", imageName: "hat02.jpg"),
        Product(title: "Snapback White", price: "Rp. 100000", imageName: "hat03.jpg"),
        Product(title: "Trucker B&W", price: "Rp. 90000", imageName: "hat04.jpg"),
    ]
    
    private let shirts = [
        Product(title: "Shirt Black", price: "Rp. 150000", imageName: "shirt01.jpg"),
        Product(title: "Shirt Black CODE", price: "Rp. 150000", imageName: "shirt02.jpg"),
        Product(title: "Shirt Red", price: "Rp. 150000", imageName: "shirt03.jpg"),
        Product(title: "Shirt Hustle", price: "Rp. 150000", imageName: "shirt04.jpg"),
        Product(title: "Shirt KF Studios", price: "Rp. 150000", imageName: "shirt05.jpg"),
    ]
    
    private let hoodies = [
        Product(title: "hoodie Black", price: "Rp. 150000", imageName: "hoodie01.jpg"),
        Product(title: "hoodie pink", price: "Rp. 350000", imageName: "hoodie02.jpg"),
        Product(title: "hoodie green", price: "Rp. 450000", imageName: "hoodie03.jpg"),
        Product(title: "hoodie red", price: "Rp. 450000", imageName: "hoodie04.jpg"),
        Product(title: "hoodie custom", price: "Rp. 250000", imageName: "hoodie05.jpg"),
    ]
    
    private let digitals = [Product]()
    
    
    func getCategories() -> [CategoryModel] {
        return categories
    }
    
   func getProducts(category: String) -> [Product] {
        switch category {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitals()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getDigitals() -> [Product] {
        return digitals
    }
    
}


