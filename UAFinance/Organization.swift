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
    var title: String = ""
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        title <- map["title"]
    }
    
 
    
//    init(map: Map) throws {
//        id <- map["id"]
//        title <- map["title"]
//    }
    

}
