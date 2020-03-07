//
//  ViewController.swift
//  C0778923_MidTerm_MAD3115W2020
//
//  Created by Kritima Kukreja on 2020-03-03.
//  Copyright © 2020 Kritima Kukreja. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var rememberMeSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userRememberCheck()
        self.navigationItem.title = "Sign In"
    }
    
    
    func userRememberCheck(){
        if let email = UserDefaults.standard.string(forKey: "userEmail"){
            usernameTextField.text = email
            if let pass = UserDefaults.standard.string(forKey: "pass"){
                passwordTextField.text = pass
                rememberMeSwitch.setOn(true, animated: false)
            }else{
                rememberMeSwitch.setOn(false, animated: false)
            }
        }
    }

@IBAction func btnLogin(_ sender: UIBarButtonItem) {
      let userOrEmail = usernameTextField.text
              let password = passwordTextField.text
              if (userOrEmail!.isEmpty || userOrEmail!.contains("")){
                  showAlert(title: "Error", message: "Please Enter Valid Email or Username")
                  return
              }
              
              if (password!.isEmpty) || (password!.contains("")) {
                  showAlert(title: "Error", message: "Please Enter Valid Password")
                  return
              }
              
              if userOrEmail == "admin@gmail.com" || password == "admin@123"{
                  let userdefault = UserDefaults.standard
                  if self.rememberMeSwitch.isOn {
                      userdefault.set(self.usernameTextField.text,forKey:"userEmail")
                      userdefault.set(self.passwordTextField.text, forKey: "pass")
                  }else{
                      userdefault.removeObject(forKey: "userEmail")
                      userdefault.removeObject(forKey: "pass")
                  }
              }else{
                  showAlert(title: "Error !!", message: "Id or password is Invalid")
                  return
              }
              showCustomerEntry()
          }
          
          func  showCustomerEntry() {
              performSegue(withIdentifier: "customer_entry", sender: nil)
          }
          
          func showAlert(title: String, message: String){
              let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
              alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
              self.present(alert, animated: true)
          }
      }




    
        





    
