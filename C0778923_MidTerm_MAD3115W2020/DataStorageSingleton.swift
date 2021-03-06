//
//  DataStorage.swift
//  C0778923_MidTerm_MAD3115W2020
//
//  Created by Kritima Kukreja on 2020-03-07.
//  Copyright © 2020 Kritima Kukreja. All rights reserved.
//

import Foundation

class DataStorage
{
    private static let instance = DataStorage()
    private lazy var customerList : [Customer] = []
    private lazy var hydroBill : [Response.HydroBill] = []
    private lazy var internetBill : [Response.InternetBill] = []
    private lazy var mobileBill : [Response.MobileBill] = []
    private lazy var insuranceBill : [Response.InsuranceBill] = []
    
    private init() {}
    
   static func getInstance() -> DataStorage {
        return instance
    }
    
    func addCustomer(customer: Customer)
    {
        self.customerList.append(customer)
    }
    
    func addHydroBill(hydrobill: Response.HydroBill)
    {
        self.hydroBill.append(hydrobill)
    }
    
    func addMobileBill(mobilebill: Response.MobileBill)
       {
           self.mobileBill.append(mobilebill)
       }
    
    func addInternetBill(internetbill: Response.InternetBill)
       {
           self.internetBill.append(internetbill)
       }
    
    func addInsuranceBill(insurancebill: Response.InsuranceBill)
       {
           self.insuranceBill.append(insurancebill)
       }
    
    func getAllCustomer() -> [Customer]
    {
        return self.customerList
    }
    
    func getAllHydroBill() -> [Response.HydroBill]
      {
          return self.hydroBill
      }
    
    func getAllInternetBill() -> [Response.InternetBill]
    {
        return self.internetBill
    }
    
    func getAllMobileBill() -> [Response.MobileBill]
    {
        return self.mobileBill
    }
    
    func getAllInsuranceBill() -> [Response.InsuranceBill]
    {
        return self.insuranceBill
    }
    
    func loadData()
      {
        
       if  let path = Bundle.main.path(forResource: "CustomerList", ofType: "plist"),
           let xml  = FileManager.default.contents(atPath: path),
           let customers = try? PropertyListDecoder().decode([Customer].self, from: xml){
           customerList = customers
       }
        
    }
    
    func loadJson()
    {
        if let path = Bundle.main.path(forResource: "Bills", ofType: "json"),
        let jsonData = path.data(using: .utf8),
        let response = try? JSONDecoder().decode(Response.self, from: jsonData){

        hydroBill = response.hydrobills
            mobileBill = response.mobilebills
            internetBill = response.internetbills
            insuranceBill = response.insurancebills
    }
}
}

