//
//  ViewController.swift
//  UAFinance
//
//  Created by Сергій Міхлєвській on 07.01.19.
//  Copyright © 2019 Сергій Міхлєвській. All rights reserved.
//

import UIKit
import Alamofire
import ObjectMapper

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        getRequest()
    }
    
    func getRequest(){
        Alamofire.request("http://resources.finance.ua/ru/public/currency-cash.json").responseJSON { response in
            if let json:[String:Any] = response.result.value as! [String : Any] {
                //print("JSON: \(json)") // serialized json response
                
                let organizations: [Any] = json["organizations"] as! [Any]
                
                
                for org in organizations {
                    let organization = Mapper<Organization>().map(JSON: org as! [String:Any])
                    
                    print(organization?.title)
                }
                
            
            }
        }
    }
    
    


}

