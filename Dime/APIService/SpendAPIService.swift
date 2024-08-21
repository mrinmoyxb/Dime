//
//  DimeAPIService.swift
//  Dime
//
//  Created by Mrinmoy Borah on 20/08/24.
//

import Foundation

class SpendAPIService{
    
    // GET
    func getSpendOfUser() async throws -> [Payment]{
        let apiEndpoint: String = "http://localhost:3000/api/spend"

        guard let url = URL(string: apiEndpoint) else{
            throw URLError(.badURL)
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else{
            dump(response)
            throw URLError(.badServerResponse)
        }
        
        let urlData = try JSONDecoder().decode(TransactionModel.self, from: data)
        let fetchedSpend: [Payment] = urlData.response.flatMap{ response ->[Payment] in
            return [response]
        }
        return fetchedSpend
    }
    
    
    // POST
    func postSpendOfUser(amount: Double, category: String) async throws{
        let apiEndpoint = "http://localhost:3000/api/spend"
        guard let url = URL(string: apiEndpoint) else{
            throw URLError(.badURL)
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = try JSONEncoder().encode(PostTransactionModel(amount: amount, category: category))
        
        let (data, response) = try await URLSession.shared.data(for: request)
        if let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode != 200 {
            throw URLError(.badServerResponse)
        }
        
        let responseData = try JSONDecoder().decode(PostResponseTransactionModel.self, from: data)
        print(responseData.response)
    }
}
