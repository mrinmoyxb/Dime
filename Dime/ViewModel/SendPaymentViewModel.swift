//
//  SendPayment.swift
//  Dime
//
//  Created by Mrinmoy Borah on 22/08/24.
//

import Foundation

class SendPaymentViewModel: ObservableObject{
    
    @Published var amountInput: String = ""
    @Published var categoryOfSpending: String = ""
    
    // input number 
    func inputNumber(_ button: String)->Void{
        if(button == "X"){
            if(!amountInput.isEmpty){
                amountInput.removeLast()
            }
        }else{
            amountInput += button
        }
    }
    
    func inputCategory(_ category: String)-> Void{
        categoryOfSpending = category
    }
    
}
