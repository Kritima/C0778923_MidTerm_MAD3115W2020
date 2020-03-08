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
        tblCustomer.delegate = self
        tblCustomer.dataSource = self
        //customerNames = DataStorage.getInstance().getAllCustomer()
        if  let path = Bundle.main.path(forResource: "CustomerList", ofType: "plist"),
                   let xml  = FileManager.default.contents(atPath: path),
                   let customers = try? PropertyListDecoder().decode([Customer].self, from: xml){
                   allCustomers = customers
               }
        
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
    @IBAction func btnLogout(_ sender: UIBarButtonItem) {
        
            let loginVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "loginVC") as! LoginViewController
            self.navigationController?.pushViewController(loginVC, animated: true)
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           switch segue.identifier {
           case "customer_details":
               let customerDetailsController = segue.destination as! CustomerDetailsViewController
               if let indexPath = self.tblCustomer.indexPathForSelectedRow {
                   customerDetailsController.configureProductDescription(product: allProducts[indexPath.row])
               }
           default:
               break
           }
       }
    
    }

    
