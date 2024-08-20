//
//  SpendModel.swift
//  Dime
//
//  Created by Mrinmoy Borah on 20/08/24.
//

import Foundation

// GET
struct TransactionModel: Codable{
    let response: [Payment]
}

struct Payment: Codable, Identifiable{
    let id: Int
    let transactionType: String
    let amount: Double
    let category: String
    let date: String
    
    enum CodingKeys: String, CodingKey{
        case transactionType
        case amount
        case category
        case date
        case id = "transactionId"
    }
}

// POST
struct PostTransactionModel: Codable{
    let amount: Double
    let category: String
}

struct PostResponseTransactionModel: Codable{
    let response: String
}
