//
//  CustomerTableViewController.swift
//  C0778923_MidTerm_MAD3115W2020
//
//  Created by Kritima Kukreja on 2020-03-04.
//  Copyright © 2020 Kritima Kukreja. All rights reserved.
//

import UIKit

class CustomerTableViewController: UIViewController {

   

    @IBOutlet weak var tblCustomer: UITableView!
    
   lazy var customerName : [Customer] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Customers"
        // Do any additional setup after loading the view.
       // customerName = DataStorage.getInstance().getAllCountries()
        
    
    }
    @IBAction func btnLogout(_ sender: UIBarButtonItem) {
            
            self.navigationController?.popViewController(animated: true)
        }
        
        
    }

extension CustomerTableViewController : UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return customerName.count
    }
    
    func numberOfSections(in tableView : UITableView) -> Int{
    
    return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomerCell")
        let country = customerName[indexPath.row]
        
        cell?.textLabel?.text = country.name
        return cell!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(150.0)
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let c = customerName[indexPath.row]
        print(c.name)
    }
}
