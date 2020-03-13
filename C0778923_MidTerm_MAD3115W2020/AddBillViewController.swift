//
//  AddBillViewController.swift
//  C0778923_MidTerm_MAD3115W2020
//
//  Created by Kritima Kukreja on 2020-03-09.
//  Copyright © 2020 Kritima Kukreja. All rights reserved.
//

import UIKit

class AddBillViewController: UIViewController, UITextFieldDelegate{

    
    @IBOutlet weak var txtfldBillId: UITextField!
    @IBOutlet weak var txtfldBillDate: UITextField!
    @IBOutlet weak var txtfldBillType: UITextField!
    @IBOutlet weak var txtfldBillAmount: UITextField!
    
    var datePicker: UIDatePicker!
    var pickerView: UIPickerView!
    
    var typeArray = ["Hydro", "Internet", "Mobile", "Insurance"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "New Bill"
        txtfldBillDate.delegate = self
        txtfldBillType.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
               return 1
           }

           func pickerView( pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
               return typeArray.count
           }

           func pickerView( _ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return typeArray[row]
           }

           func pickerView( pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
               txtfldBillType.text = typeArray[row]
           }
    
    
    func textFieldDidBeginEditing(_ textField: UITextField)
      {
        self.pickUpDate(self.txtfldBillDate)
       self.pickUpType(self.txtfldBillType)
      }
      
      func pickUpDate(_ textField : UITextField)
      {
        self.datePicker = UIDatePicker(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 216))
        self.datePicker.backgroundColor = UIColor.white
        self.datePicker.datePickerMode = UIDatePicker.Mode.date
        textField.inputView = self.datePicker
       
       
        //ToolBar
        let toolBar = UIToolbar()
        toolBar.barStyle = .default
        toolBar.isTranslucent = true
        toolBar.tintColor = .gray//UIColor(red: 92/255, green: 216/255, blue 255/255, alpha : 1)
        toolBar.sizeToFit()
       
        //Adding Button ToolBar
       
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(AddBillViewController.doneClickDate))
       
        let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
       
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(AddBillViewController.cancelClickDate))
       
        toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        textField.inputAccessoryView = toolBar
      }
    
   func pickUpType(_ textField : UITextField)
    {
      self.pickerView = UIPickerView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 216))
      self.pickerView.backgroundColor = UIColor.white
      textField.inputView = self.pickerView
        
        
     
     
      //ToolBar
      let toolBar = UIToolbar()
      toolBar.barStyle = .default
      toolBar.isTranslucent = true
      toolBar.tintColor = .gray//UIColor(red: 92/255, green: 216/255, blue 255/255, alpha : 1)
      toolBar.sizeToFit()
     
      //Adding Button ToolBar
     
      let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(AddBillViewController.doneClick))
     
      let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
     
      let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(AddBillViewController.cancelClick))
     
      toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
      toolBar.isUserInteractionEnabled = true
      textField.inputAccessoryView = toolBar
    }
       
      @objc func doneClickDate(){
        let dateFormatter1 = DateFormatter()
        dateFormatter1.dateStyle = .medium
        dateFormatter1.timeStyle = .none
        txtfldBillDate.text = dateFormatter1.string(from: datePicker.date)
        txtfldBillDate.resignFirstResponder()
      }
       
      @objc func cancelClickDate(){
        txtfldBillDate.resignFirstResponder()
      }
    
    @objc func doneClick(){
        //txtfldBillType.text = pickerView.text
          txtfldBillType.resignFirstResponder()
        }
         
        @objc func cancelClick(){
          txtfldBillType.resignFirstResponder()
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
