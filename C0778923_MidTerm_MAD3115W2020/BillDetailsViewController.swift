//
//  BillDetailsViewController.swift
//  C0778923_MidTerm_MAD3115W2020
//
//  Created by Kritima Kukreja on 2020-03-13.
//  Copyright © 2020 Kritima Kukreja. All rights reserved.
//

import UIKit

class BillDetailsViewController: UIViewController {
    
    @IBOutlet weak var lblBillDetail1: UILabel!
    @IBOutlet weak var lblBillDetail2: UILabel!
    @IBOutlet weak var lblBillDetail3: UILabel!
    @IBOutlet weak var lblBillDetail4: UILabel!
    @IBOutlet weak var lblBillDetail5: UILabel!
    @IBOutlet weak var lblBillDetail6: UILabel!
    @IBOutlet weak var lblBillDetail7: UILabel!
    @IBOutlet weak var lblBillDetail8: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Bill Details"
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btnHome(_ sender: UIBarButtonItem) {
        
        let tableVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "tableVC") as! CustomerTableViewController
        self.navigationController?.pushViewController(tableVC, animated: true)
        
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
