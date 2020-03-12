//
//  CustomerTableViewCell.swift
//  C0778923_MidTerm_MAD3115W2020
//
//  Created by Kritima Kukreja on 2020-03-11.
//  Copyright © 2020 Kritima Kukreja. All rights reserved.
//

import UIKit

class CustomerTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        viewBackView.layer.borderColor = UIColor.black.cgColor viewBackView.layer.borderWidth = 3.0 viewBackView.layer.cornerRadius = 8.0 viewBackView.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureEachCell(customer: Customer){
           self.lblPersonFirstName.text="\(person.personFirstName)"
           self.ivPersonLastName.text="\(person.personLastName)"
           self.ivPersonSalary.text = "$\(person.salary)"
           let check = #imageLiteral(resourceName: "icons8-customer-48")
           self.ivPersonImage.image = check
       }

}
