 //
//  DataService.swift
//  Swag Fashion
//
//  Created by ZEUS on 29/7/19.
//  Copyright © 2019 ZEUS. All rights reserved.
//

import Foundation

//Singletone class
class DataService {
    static let instance = DataService()
    private let categories = [
                              Category(title: "SHIRTS", imageName: "shirts.png"),
                              Category(title: "HOODIES", imageName: "hoodies.png"),
                              Category(title: "HATS", imageName: "hats.png"),
                              Category(title: "DIGITAL", imageName: "digital.png")
                            ]
    
    private let hats = [
        Product(title: "Zeus Logo Beanie", price: "$18", imgName: "hat01.png"),
        Product(title: "Zeus Logo Hat Black", price: "22$" , imgName: "hat02.png"),
        Product(title: "Zeus Logo Hat White", price: "22$" , imgName: "hat03.png"),
        Product(title: "Zeus Logo Hat Snapback", price: "20$", imgName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Zeus Logo Hoodie Grey", price: "$32", imgName: "hoodie01.png"),
        Product(title: "Zeus Logo Hoodie Red", price: "$32", imgName: "hoodie02.png"),
        Product(title: "Zeus Logo Hoodie Grey", price: "$32", imgName: "hoodie03.png"),
        Product(title: "Zeus Logo Hoodie Black", price: "$32", imgName: "hoodie04.png"),
    ]
    
    private let shirt = [
        Product(title: "Zeus Logo Shirt Black", price: "$18", imgName: "shirt01"),
        Product(title: "Zeus Badge Shirt Light Grey", price: "$18", imgName: "shirt02"),
        Product(title: "Zeus Logo Shirt Red", price: "$19", imgName: "shirt03"),
        Product(title: "Zeus Logo Delegate Grey", price: "$20", imgName: "shirt04"),
        Product(title: "Kickflip Studios Black", price: "$17", imgName: "shirt05")
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts (forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRT":
            return getShirts()
            
        case "HATS":
            return getHats()
        
        case "HOODIES":
            return getHoodies()
            
        case "DIGITAL":
            return getDigitalGoods()
            
        default:
            return getShirts()
        }
    }
    
    func getShirts() -> [Product] {
        return shirt
    }
    func getHats() -> [Product] {
        return hats
    }
    func getHoodies() -> [Product]{
        return hoodies
    }
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
    
    
    
    
    
    
    
    
    
 }
