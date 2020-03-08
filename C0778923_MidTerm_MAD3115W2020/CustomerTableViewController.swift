//
//  CustomerTableViewController.swift
//  C0778923_MidTerm_MAD3115W2020
//
//  Created by Kritima Kukreja on 2020-03-04.
//  Copyright © 2020 Kritima Kukreja. All rights reserved.
//

import UIKit

class CustomerTableViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    
    
    @IBOutlet weak var tblCustomer: UITableView!
    
    var allCustomers = [Customer]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Customers"
        tblCustomer.delegate = self
        tblCustomer.dataSource = self
        allCustomers = DataStorage.getInstance().getAllCustomer()
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView : UITableView) -> Int{
        
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allCustomers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell")
        
        let p = self.allCustomers[indexPath.row]
        cell?.textLabel?.text = p.name
        cell?.imageView?.image = #imageLiteral(resourceName: "icons8-customer-48")
        return cell!
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detailsVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "detailsVC") as! CustomerDetailsViewController
        
        detailsVC.customerName = self.allCustomers[indexPath.row].name
        detailsVC.customerId = self.allCustomers[indexPath.row].id
        detailsVC.customerEmail = self.allCustomers[indexPath.row].email
        
        self.navigationController?.pushViewController(detailsVC, animated: true)
    
        
        
    }
    
    
    
    @IBAction func btnLogout(_ sender: UIBarButtonItem) {
        
        let loginVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "loginVC") as! LoginViewController
        self.navigationController?.pushViewController(loginVC, animated: true)
    }
    
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "customer_details":
            let customerDetailsController = segue.destination as! CustomerDetailsViewController
            if let indexPath = self.tblCustomer.indexPathForSelectedRow {
                customerDetailsController.configureProductDescription(customer: allCustomers[indexPath.row])
            }
        default:
            break
        }
    }*/
    
    
    
}


