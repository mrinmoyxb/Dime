//
//  DimeAPIService.swift
//  Dime
//
//  Created by Mrinmoy Borah on 20/08/24.
//

import Foundation

class DimeSpendAPIService{
    
    // GET
    func getSpendOfUser() async throws -> [Spend]{
        let apiEndpoint: String = "https://localhost:3000/api/spend"
        
        guard let url = URL(string: apiEndpoint) else{
            throw URLError(.badURL)
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else{
            dump(response)
            throw URLError(.badServerResponse)
        }
        
        let urlData = try JSONDecoder().decode(getSpendModel.self, from: data)
        let fetchedSpend: [Spend] = urlData.msg.flatMap{ msg->[Spend] in
            return [msg]
        }
        print(fetchedSpend)
        return fetchedSpend
    }
    
    
    // POST
    func postSpendOfUser() async throws{
            
    }
}
