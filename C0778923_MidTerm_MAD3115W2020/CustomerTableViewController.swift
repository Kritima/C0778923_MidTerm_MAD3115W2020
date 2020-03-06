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
    var allCustomer = [Customer]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblCustomer.delegate = self
        tblCustomer.dataSource = self
        
        self.navigationItem.title = "Customers"
        
        if  let path = Bundle.main.path(forResource: "CustomerList", ofType: "plist"),
                   let xml  = FileManager.default.contents(atPath: path),
                   let preferences = try? PropertyListDecoder().decode([Customer].self, from: xml){
                   allCustomer = preferences
               }
    }
    
   /* override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "customer_details":
            let customerDetailsController = segue.destination as! CustomerDetailsViewController
            if let indexPath = self.tblCustomer.indexPathForSelectedRow {
                customerDetailsController.configureProductDescription(product: allCustomer[indexPath.row])
            }
        default:
            break
        }
    }*/
    
func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140.0
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allCustomer.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let product = allProducts[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "customerCell") as! CustomerTableViewCell
        //cell.configureEachCell(product: product)
        
        let c = self.allCustomer[indexPath.row]
        cell.configureEachCell(customer: c)
        return cell
        
    }
}
