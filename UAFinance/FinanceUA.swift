//
//  FinanceUA.swift
//  UAFinance
//
//  Created by Сергій Міхлєвській on 07.01.19.
//  Copyright © 2019 Сергій Міхлєвській. All rights reserved.
//

import UIKit
import ObjectMapper

class FinanceUA: Mappable {
    var date: String = ""
    var organizations: [Organization] = []
    
    func mapping(map: Map) {
        date <- map["date"]
        for org: (map["organizations"] as [Any]){
            organizations = Mapper<Organization>().map(JSON: org as! [String:Any])
        }
    }
    
    required init?(map: Map) {
        
    }
    
    
    
    
    
    
}
