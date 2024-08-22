//
//  EarnCategory.swift
//  Dime
//
//  Created by Mrinmoy Borah on 22/08/24.
//

import Foundation

enum SpendCategory: String, CaseIterable, Identifiable{
    case Rent = "Rent"
    case Utilities = "Utilities"
    case Groceris = "Groceris"
    case Transportation = "Transportation"
    case Insurance = "Insurance"
    case Healthcare = "Healthcare"
    case DiningOut = "Dining Out"
    case Entertainment = "Entertainment"
    case Clothing = "Clothing"
    case DebtPayments = "Debt Payments"
    
    var id: String{self.rawValue}
}
