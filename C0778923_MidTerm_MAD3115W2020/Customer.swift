//
//  Customer.swift
//  C0778923_MidTerm_MAD3115W2020
//
//  Created by Kritima Kukreja on 2020-03-06.
//  Copyright © 2020 Kritima Kukreja. All rights reserved.
//

import Foundation

struct Customer: Codable {
    let id: String
    let name: String
    let email: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case name, price
        case description = "Description"
}
}
