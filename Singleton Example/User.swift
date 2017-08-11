//
//  User.swift
//  Singleton Example
//
//  Created by Yogesh Rathore on 11/08/17.
//  Copyright © 2017 Sybrant Technologies. All rights reserved.
//

import Foundation
import SwiftyJSON

class User {
    
    var name = String()
    var email = String()
    var phone = String()
    var website = String()
    var address = String()
    var company = String()
    
    init(userJson:JSON) {
        self.name = userJson["name"].stringValue
        self.email = userJson["email"].stringValue
        self.phone = userJson["phone"].stringValue
        self.website = userJson["website"].stringValue
      //  self.address = UserAddress(addressJson: JSON["address"])
      //  self.company = UserCompany(companyJson:userJson["company"])
        self.address = userJson["address"]["city"].stringValue
        self.company = userJson["company"]["name"].stringValue
    
    }
}

//class UserAddress {
//    
//    var street = String()
//    var suite = String()
//    var city = String()
//    var zipcode = String()
//    
//    init(addressJson:JSON) {
//        self.street = addressJson["street"].stringValue
//        self.suite = addressJson["suite"].stringValue
//        self.city = addressJson["city"].stringValue
//        self.zipcode = addressJson["zipcode"].stringValue
//    }
//}
//
//class UserCompany{
//    var name = String()
//    init(companyJson:JSON) {
//        self.name = companyJson["name"].stringValue
//    }
//}


