//
//  CustomerAddViewController.swift
//  C0778923_MidTerm_MAD3115W2020
//
//  Created by Kritima Kukreja on 2020-03-04.
//  Copyright © 2020 Kritima Kukreja. All rights reserved.
//

import UIKit

class CustomerAddViewController: UIViewController {

    @IBOutlet weak var txtfldCustomerId: UITextField!
    @IBOutlet weak var txtfldCustomerName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "New Customer"
        
        // let preferences = Preferences(webserviceURL: "https://api.twitter.com", itemsPerPage: 10, backupEnabled: false)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
