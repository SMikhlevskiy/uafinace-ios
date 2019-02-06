//
//  Organization.swift
//  UAFinance
//
//  Created by Сергій Міхлєвській on 07.01.19.
//  Copyright © 2019 Сергій Міхлєвській. All rights reserved.
//

import UIKit
import ObjectMapper

class Organization: Mappable {
    var id: String = ""
    var orgType: Int = 0
    var branch: Bool = false;
    var title: String = ""
    var regionId: String = ""
    var cityId: String = ""
    var phone: String = ""
    var address: String = ""
    var link: String = ""
    
    var currencies = [String:Currency]()
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        orgType <- map["orgType"]
        branch <- map["branch"]
        title <- map["title"]
        regionId <- map["regionId"]
        cityId <- map["cityId"]
        phone <- map["phone"]
        address <- map["address"]
        link <- map["link"]
        currencies <- map["currencies"]
    }
    
}
