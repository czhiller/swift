//
//  ChuckDAO.swift
//  webServicesExample
//
//  Created by iOS on 14/5/18.
//  Copyright © 2018 Acn. All rights reserved.
//

import Foundation
import Alamofire

class ChuckDAO {
    
    func getJokeFromApi(callbackDeCompletion:  @escaping ((String)->Void)){
        Alamofire
            .request("https://api.chucknorris.io/jokes/random")
            .responseJSON { (response) in
                //print(response)
                if let dictionary = (response.result.value as? [String: AnyObject]){
                    if let joke = dictionary["value"] as? String {
                        callbackDeCompletion(joke)
                    }
                    //print(dictionary)
                };
    }
    
}

}
