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

class OrganizationsListVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var financeUA: FinanceUA?
    let rateCellIDF = "OCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: rateCellIDF, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: rateCellIDF)
        
        tableView.delegate = self
        tableView.dataSource = self
        
        getRequest()
    }
    
    func getRequest(){
        let url = "http://resources.finance.ua/ru/public/currency-cash.json"
        
        Alamofire.request(url).responseObject { (response: DataResponse<FinanceUA>) in
            if let result = response.result.value {
                self.financeUA = result
                print("date = \(result.date)")
                print("org count=\(result.organizations.count)")
                for organization in result.organizations {
                    print(organization.title)
                }
                print("cities count=\(result.cities.count)")
                for city in result.cities {
                    print(city.value)
                }
                self.tableView.reloadData()
                
            } else {
                print("error")
            }
        }
        
    }
}

extension OrganizationsListVC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if financeUA != nil {
            return financeUA!.organizations.count
        } else {
            return 0
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell:  UITableViewCell? = nil
        
        
        guard let rateCell = tableView.dequeueReusableCell(withIdentifier: rateCellIDF, for: indexPath) as? OrganizationCell
        
        else { return UITableViewCell() }
        
        rateCell.render(organization: (financeUA?.organizations[indexPath.row])!)
        cell = rateCell
        
        // set the text from the data model
        
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 50
    }
    
    
}

