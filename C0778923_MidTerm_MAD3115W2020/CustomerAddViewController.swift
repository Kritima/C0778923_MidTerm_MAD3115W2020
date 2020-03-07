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
    
    @IBOutlet weak var txtfldCustomerEmail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "New Customer"
        
    }
    
    

    @IBAction func btnSave(_ sender: UIBarButtonItem) {
        
        let customer = Customer(id: txtfldCustomerId.text!, name: txtfldCustomerName.text!, email: txtfldCustomerEmail.text!)
        
        let encoder = PropertyListEncoder()
        encoder.outputFormat = .xml

        let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent("CustomerList.plist")

        do {
            let data = try encoder.encode(customer)
            try data.write(to: path)
        } catch {
            print(error)
        }
        
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
