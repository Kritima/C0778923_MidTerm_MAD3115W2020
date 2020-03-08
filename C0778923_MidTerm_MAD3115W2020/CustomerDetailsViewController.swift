//
//  CustomerDisplayViewController.swift
//  C0778923_MidTerm_MAD3115W2020
//
//  Created by Kritima Kukreja on 2020-03-06.
//  Copyright © 2020 Kritima Kukreja. All rights reserved.
//

import UIKit

class CustomerDetailsViewController: UIViewController {
    
    @IBOutlet weak var lblCustomerId: UILabel!
    @IBOutlet weak var lblCustomerName: UILabel!
    @IBOutlet weak var lblCustomerEmail: UILabel!
    
    
    
    var customerId = ""
    var customerName = ""
    var customerEmail = ""
    
    var customerDetails: Customer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Bill Details"
        
        self.lblCustomerId.text = customerId
        self.lblCustomerName.text = customerName
        self.lblCustomerEmail.text = customerEmail

        // Do any additional setup after loading the view.
    }
    
    /*func configureProductDescription(customer: Customer){
              customerDetails = customer
              
          }
    
     func configureView(for customer: Customer) {
        self.lblCustomerId.text = customer.id
        self.lblCustomerName.text = customer.name
        self.lblCustomerEmail.text = customer.email
        }*/
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
