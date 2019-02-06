//
//  Currency.swift
//  UAFinance
//
//  Created by Mobiwolf on 2/6/19.
//  Copyright © 2019 Сергій Міхлєвській. All rights reserved.
//

import UIKit
import ObjectMapper

class Currency: Mappable {
    var ask:String = ""
    var bid:String = ""
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        ask <- map ["ask"]
        bid <- map ["bid"]
    }
    

}
