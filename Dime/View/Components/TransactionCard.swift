//
//  TransactionCard.swift
//  Dime
//
//  Created by Mrinmoy Borah on 26/07/24.
//

import SwiftUI

struct TransactionCard: View {
    
    var imageIcon: String
    var paymentHeading: String
    var date: String
    var amount: Double
    var transactionType: String
    
    var body: some View {
        ZStack{
            Rectangle()
                .frame(maxWidth: .infinity)
                .frame(height: 100)
                .foregroundColor(.white)
                .cornerRadius(20)
            
            HStack{
                
                // Image icon
                Image(systemName: imageIcon)
                    .font(.system(size: 50))
                    .foregroundColor(.black)
                
                // Payment type and date
                VStack(alignment: .leading){
                    Text(paymentHeading)
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                    
                    Text(date)
                        .font(.system(size: 15))
                        .opacity(0.7)
                }
                .lineLimit(1)
                .padding(.horizontal, 2)
                .foregroundColor(.black)
                Spacer()
                
                // Amount
                HStack{
                    Text(transactionType == "Spend" ? amount : amount, format: .currency(code: "INR"))
                        .foregroundColor(transactionType == "Spend" ? Color.red : Color.green)
                        .foregroundColor(.white)
                        .fontWeight(.medium)
                }
                
            }
            .padding(.horizontal)
            .foregroundColor(.black)
            
        }.padding(.horizontal)
    }
}

#Preview {
    TransactionCard(imageIcon: "car.circle.fill", paymentHeading: "Taxi", date: "26/07/2024", amount: 10000.00, transactionType: "Spend")
}
