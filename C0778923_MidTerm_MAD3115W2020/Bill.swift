//
//  Bill.swift
//  C0778923_MidTerm_MAD3115W2020
//
//  Created by Kritima Kukreja on 2020-03-13.
//  Copyright © 2020 Kritima Kukreja. All rights reserved.
//

import Foundation

struct Response: Codable
{
    var customerId: String
    
    struct Bill: Codable {
        var id: String
        var date: String
        var type: String
        var agencyName: String
        var unitConsumed: Int
    }

    var bills:[Bill]
}
