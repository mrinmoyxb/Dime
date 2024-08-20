//
//  SpendModel.swift
//  Dime
//
//  Created by Mrinmoy Borah on 20/08/24.
//

import Foundation

// GET
struct getSpendModel: Codable{
    let msg: [Spend]
}

struct Spend: Codable, Identifiable{
    let id: Int
    let spendType: String
    let amount: String
    let date: Date
    
    enum CodingKeys: String, CodingKey{
        case spendType
        case amount
        case date
        case id = "spendId"
    }
}

// POST
struct postSpendModel: Codable{
    let amount: String
    let spendType: String
}
