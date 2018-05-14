//
//  MercadoLibreApiDAO.swift
//  MercadoLibreExample
//
//  Created by iOS on 14/5/18.
//  Copyright © 2018 Acn. All rights reserved.
//

import Foundation
import Alamofire

class MercadoLibreApiDAO {
    
    func getProducts(query: String, callbackDeCompletion: @escaping (([Product])->Void)) {
        let url = "https://api.mercadolibre.com/sites/MLA/search"
        let params = ["q": query]
        Alamofire
            .request(url, parameters: params)
            .responseJSON { (response) in
                if let dictionary = response.result.value as? [String: AnyObject] {
                    if let array = dictionary["results"] as? [[String: AnyObject]] {
                        print(array.count)
                        
                        var productsArray: [Product] = []
                        for d in array {
                            let p = Product(dictionary: d)
                            productsArray.append(p)
                        }
                        callbackDeCompletion(productsArray)
                    }
                }
                
        }
    }
    
}
