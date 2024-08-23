//
//  spendAndExpenseViewMode.swift
//  Dime
//
//  Created by Mrinmoy Borah on 20/08/24.
//

import Foundation

class SpendAndEarnViewModel: ObservableObject{
    
    let earnApiService = EarnAPIService()
    let spendApiService = SpendAPIService()
    
    @Published var getSpendings: [Payment] = [Payment]()
    @Published var getEarnings: [Payment] = [Payment]()
    
    @Published var postSpend: PostResponseTransactionModel = PostResponseTransactionModel(response: "")
    
    @Published var errorMessage: String = ""
    
    init(){
        Task{
            do{
                let fetchedSpendings = try await spendApiService.getSpendOfUser()
                let fetchedEarnings = try await earnApiService.getEarnOfUser()
                
                DispatchQueue.main.async{
                    self.getSpendings = fetchedSpendings
                    self.getEarnings = fetchedEarnings
                }
            }catch{
                DispatchQueue.main.async{
                    self.errorMessage = error.localizedDescription
                }
            }
        }
    }
    
    func postEaringRequest(amount: Double, category: String){
        Task{
            try await earnApiService.postEarnOfUser(amount: amount, category: category)
        }
    }
    
    func postSpendingRequest(amount: Double, category: String){
        Task{
            try await spendApiService.postSpendOfUser(amount:amount, category: category)
        }
    }
}
