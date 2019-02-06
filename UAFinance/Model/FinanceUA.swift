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
    var organizations = [Organization]()
    var cities = [String:String]()
    var currencies = [String:String]()
    var orgTypes = [String:String]()
    
    
    func mapping(map: Map) {
        date <- map["date"]
        organizations <- map["organizations"]
        cities <- map["cities"]
        currencies <- map["currencies"]
        orgTypes <- map["orgTypes"]
    }
    
    required init?(map: Map) {
        
    }
    
    
    
    
    
    
}
