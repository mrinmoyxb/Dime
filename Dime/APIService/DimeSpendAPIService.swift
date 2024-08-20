//
//  DimeAPIService.swift
//  Dime
//
//  Created by Mrinmoy Borah on 20/08/24.
//

import Foundation

class DimeSpendAPIService{
    
    // GET
    func getSpendOfUser() async throws{
        let apiEndpoint: String = "https://localhost:3000/api/spend"
        
        guard let url = URL(string: apiEndpoint) else{
            throw URLError(.badURL)
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let httpResponse = reponse as? HTTPURLResponse, httpResponse.statusCode ==200 else{
            dump(response)
            throw URLError(.badServerResponse)
        }
        
        let urlData = try JSONDecoder
    }
    
    
    // POST
    func postSpendOfUser() async throws{
            
    }
}
