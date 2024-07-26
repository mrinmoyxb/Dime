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
    var amount: String
    
    var body: some View {
        ZStack{
            Rectangle()
                .frame(maxWidth: .infinity)
                .frame(height: 100)
                .foregroundColor(.white)
                .cornerRadius(20)
            
            HStack{
                Image(systemName: imageIcon)
                    .font(.system(size: 50))
                    .foregroundColor(.black)
                
                VStack(alignment: .leading){
                    Text(paymentHeading)
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                        .lineLimit(1)
                    
                    Text(date)
                        .font(.system(size: 15))
                        .lineLimit(1)
                }
                .frame(width: 120)
                .padding(.horizontal, 2)
                .foregroundColor(.black)
                Spacer()
                
                Text(amount)
                    .foregroundColor(.black)
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                
            }
            .padding(.horizontal)
            .foregroundColor(.black)
            
        }.padding(.horizontal)
    }
}

#Preview {
    TransactionCard(imageIcon: "car.circle.fill", paymentHeading: "Taxi", date: "26/07/2024", amount: "+ 10000")
}
