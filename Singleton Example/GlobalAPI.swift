//
//  GlobalAPI.swift
//  Singleton Example
//
//  Created by Yogesh Rathore on 10/08/17.
//  Copyright © 2017 Sybrant Technologies. All rights reserved.
//

import Foundation
import UIKit
import Alamofire
import SwiftyJSON

class GlobalAPI {
    
    static let sharedObj = GlobalAPI()
    
    
    private init() {
        
    }
    
    func GetRequest(onCompletion: @escaping (JSON) -> Void) {
        Alamofire.request(GET_USER_URL, method: .get, parameters: nil, encoding: JSONEncoding.default).responseJSON { response in
            //  debugPrint(response)
            switch response.result {
            case .success(let getJSON):
                
                let response = JSON(getJSON)
                onCompletion(response)
                
            case .failure(let error):
                
                print(error)
                onCompletion(JSON.null)
                
            }
        }
        
    }
}
