//
//  OrganizationCell.swift
//  UAFinance
//
//  Created by Сергій Міхлєвській on 09.02.19.
//  Copyright © 2019 Сергій Міхлєвській. All rights reserved.
//

import UIKit
class OrganizationCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    private func setup() {
        self.selectionStyle = .none
    }
    
    func render(organization: Organization) {
        nameLabel.text = organization.title
    }
}
