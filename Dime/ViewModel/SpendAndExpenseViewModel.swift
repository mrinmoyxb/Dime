//
//  spendAndExpenseViewMode.swift
//  Dime
//
//  Created by Mrinmoy Borah on 20/08/24.
//

import Foundation

class SpendAndExpenseViewModel: ObservableObject{
    
    let spendApiService = SpendAPIService()
    
    @Published var getSpendings: [Payment] = [Payment]()
    //@Published var postSpend: postSpendModel = postSpendModel(amount: "", spendType: "")
    @Published var errorMessage: String = ""
    
    init(){
        Task{
            do{
                let fetchedSpendings = try await spendApiService.getSpendOfUser()
                try await spendApiService.postSpendOfUser()
                DispatchQueue.main.async{
                    self.getSpendings = fetchedSpendings
                }
            }catch{
                DispatchQueue.main.async{
                    self.errorMessage = error.localizedDescription
                }
            }
        }
    }
}
