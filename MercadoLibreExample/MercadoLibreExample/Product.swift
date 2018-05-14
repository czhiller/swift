//
//  Product.swift
//  MercadoLibreExample
//
//  Created by iOS on 14/5/18.
//  Copyright © 2018 Acn. All rights reserved.
//

import Foundation

class Product {
    
    var title: String
    var price: Double
    var currency: String
    var thumbnail: String
    
    init(title: String, price: Double, currency: String, thumbnail: String) {
        self.title = title
        self.price = price
        self.currency = currency
        self.thumbnail = thumbnail
    }
    
    init(dictionary: [String: AnyObject]){
        self.title = dictionary["title"] as? String ?? "Sin titulo"
        self.price = dictionary["price"] as? Double ?? -1
        self.currency = dictionary["currency_id"] as? String ?? "ARS"
        self.thumbnail = dictionary["thumbnail"] as? String ?? ""
    }
}
