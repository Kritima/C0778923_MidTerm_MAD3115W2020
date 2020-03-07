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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
     /*func configureView(for product: Product, with price: Double) {
            self.navigationItem.title = product.name
            self.navigationController!.navigationItem.title = product.name
            self.ivProduct.image = UIImage(named: product.imgURL)
    //        self.lblProductName.text = product.name
            self.lblPrice.text = "$" + String(format: "%.2f", price)
            self.lblDescription.text = product.description
            self.lblQuantity.text = "Quantity: " + String(quantity)
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
