//
//  CustomerDisplayViewController.swift
//  C0778923_MidTerm_MAD3115W2020
//
//  Created by Kritima Kukreja on 2020-03-06.
//  Copyright © 2020 Kritima Kukreja. All rights reserved.
//

import UIKit

class CustomerDetailsViewController: UIViewController {
    
    
    @IBOutlet weak var viewCustomerId: UIView!
    @IBOutlet weak var lblCustomerId: UILabel!
    @IBOutlet weak var viewCustomerName: UIView!
    @IBOutlet weak var lblCustomerName: UILabel!
    @IBOutlet weak var viewCustomerEmail: UIView!
    @IBOutlet weak var lblCustomerEmail: UILabel!
    
    @IBOutlet weak var ivHydro: UIImageView!
    @IBOutlet weak var ivInternet: UIImageView!
    @IBOutlet weak var ivMobile: UIImageView!
    @IBOutlet weak var ivInsurance: UIImageView!
    
    
    
    
    var customerId = ""
    var customerName = ""
    var customerEmail = ""
    
    var customerDetails: Customer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Customer's Bills"
        
        let tapGestureHydro = UITapGestureRecognizer(target: self, action: #selector(CustomerDetailsViewController.imageTappedHydro(gesture:)))
        
        let tapGestureInternet = UITapGestureRecognizer(target: self, action: #selector(CustomerDetailsViewController.imageTappedInternet(gesture:)))
        
        let tapGestureMobile = UITapGestureRecognizer(target: self, action: #selector(CustomerDetailsViewController.imageTappedMobile(gesture:)))
        
        let tapGestureInsurance = UITapGestureRecognizer(target: self, action: #selector(CustomerDetailsViewController.imageTappedInsurance(gesture:)))
        
        ivHydro.addGestureRecognizer(tapGestureHydro)
        ivInternet.addGestureRecognizer(tapGestureInternet)
        ivMobile.addGestureRecognizer(tapGestureMobile)
        ivInsurance.addGestureRecognizer(tapGestureInsurance)
        
        ivHydro.isUserInteractionEnabled = true
        ivInternet.isUserInteractionEnabled = true
        ivMobile.isUserInteractionEnabled = true
        ivInsurance.isUserInteractionEnabled = true
        
        
        self.lblCustomerId.text = "Customer Id: \(customerId)"
        self.lblCustomerName.text = "Customer Name: \(customerName)"
        self.lblCustomerEmail.text = "Customer Email: \(customerEmail)"
        
        // Do any additional setup after loading the view.
    }
    
    @objc func imageTappedHydro(gesture: UIGestureRecognizer) {
        // if the tapped view is a UIImageView then set it to imageview
        if (gesture.view as? UIImageView) != nil {
            print("Image Tapped")
            //Here you can initiate your new ViewController
            
            let hydroBillVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "billsVC") as! BillDetailsViewController
            
            self.navigationController?.pushViewController(hydroBillVC, animated: true)
            
        }
    }
    
    @objc func imageTappedInternet(gesture: UIGestureRecognizer) {
        // if the tapped view is a UIImageView then set it to imageview
        if (gesture.view as? UIImageView) != nil {
            print("Image Tapped")
            //Here you can initiate your new ViewController
            
            let internetBillVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "billsVC") as! BillDetailsViewController
            
            self.navigationController?.pushViewController(internetBillVC, animated: true)
            
        }
    }
    
    @objc func imageTappedMobile(gesture: UIGestureRecognizer) {
        // if the tapped view is a UIImageView then set it to imageview
        if (gesture.view as? UIImageView) != nil {
            print("Image Tapped")
            //Here you can initiate your new ViewController
            let mobileBillVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "billsVC") as! BillDetailsViewController
            
            self.navigationController?.pushViewController(mobileBillVC, animated: true)
            
        }
    }
    
    @objc func imageTappedInsurance(gesture: UIGestureRecognizer) {
        // if the tapped view is a UIImageView then set it to imageview
        if (gesture.view as? UIImageView) != nil {
            print("Image Tapped")
            //Here you can initiate your new ViewController
            
            let insuranceBillVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "billsVC") as! BillDetailsViewController
            
            self.navigationController?.pushViewController(insuranceBillVC, animated: true)
            
        }
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
