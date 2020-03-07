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
        
        if (txtfldCustomerId.text!.isEmpty || txtfldCustomerId.text!.contains("") || txtfldCustomerName.text!.isEmpty || txtfldCustomerName.text!.contains("") ||
            txtfldCustomerEmail.text!.isEmpty || txtfldCustomerEmail.text!.contains(""))
        {
             showAlert(title: "Error", message: "Please enter the required fields")
        }
            
        else
            {
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
        
        showAlert(title: "Added", message: "New Customer Added")
        
            
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
    func showAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
}
