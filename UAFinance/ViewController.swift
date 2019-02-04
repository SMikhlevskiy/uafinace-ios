//
//  ViewController.swift
//  UAFinance
//
//  Created by Сергій Міхлєвській on 07.01.19.
//  Copyright © 2019 Сергій Міхлєвській. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        getRequest()
    }
    
    func getRequest(){
        let url = "http://resources.finance.ua/ru/public/currency-cash.json"
        
        Alamofire.request(url).responseObject { (response: DataResponse<FinanceUA>) in
            if let finaceUA = response.result.value {
                print("date = \(finaceUA.date)")
            } else {
                print("error")
            }
        }
        
    }
    
    


}

