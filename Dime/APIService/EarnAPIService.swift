//
//  DimeEarnAPIService.swift
//  Dime
//
//  Created by Mrinmoy Borah on 20/08/24.
//

import Foundation

class EarnAPIService{
    
    // GET
    func getEarnOfUser() async throws -> [Payment] {
        let apiEndpoint: String = "http://localhost:3000/api/earn"
        
        guard let url = URL(string: apiEndpoint) else{
            throw URLError(.badURL)
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else{
            dump(response)
            throw URLError(.badServerResponse)
        }
        
        let urlData = try JSONDecoder().decode(TransactionModel.self, from: data)
        let fetchedEarn: [Payment] = urlData.response.flatMap{response -> [Payment] in
            return [response]
        }
        return fetchedEarn
    }
}
