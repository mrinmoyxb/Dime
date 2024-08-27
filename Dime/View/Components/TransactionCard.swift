//
//  TransactionCard.swift
//  Dime
//
//  Created by Mrinmoy Borah on 26/07/24.
//

import SwiftUI

struct TransactionCard: View {
    
      var imageIcon: String
      var payment: Payment
    
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
                    Text(payment.category)
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                    
                    Text(payment.date)
                        .font(.system(size: 15))
                        .opacity(0.7)
                }
                .lineLimit(1)
                .padding(.horizontal, 2)
                .foregroundColor(.black)
                Spacer()
                
                // Amount
                HStack{
                    Text(payment.signedAmount, format: .currency(code: "INR"))
                        .foregroundColor(payment.transactionType == "Spend" ? Color.red : Color.green)
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
    TransactionCard(imageIcon: "car.circle.fill", payment: Payment(id: 1, transactionType: "Spend", amount: 1000, category: "Taxi", date: "23/20/2003"))
}
