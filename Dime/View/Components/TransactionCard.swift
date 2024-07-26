//
//  TransactionCard.swift
//  Dime
//
//  Created by Mrinmoy Borah on 26/07/24.
//

import SwiftUI

struct TransactionCard: View {
    var body: some View {
        ZStack{
            Rectangle()
                .frame(maxWidth: .infinity)
                .frame(height: 100)
                .foregroundColor(.white)
                .cornerRadius(20)
            
            HStack{
                Image(systemName: "car.circle.fill")
                    .font(.system(size: 50))
                    .foregroundColor(.black)
                
                VStack(alignment: .leading){
                    Text("Taxi.......................")
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                        .lineLimit(1)
                    
                    Text("26/07/2024")
                        .font(.system(size: 15))
                        .lineLimit(1)
                }
                .frame(width: 120)
                .padding(.horizontal, 3)
                .foregroundColor(.black)
                Spacer()
                
                Text("+ 200000000")
                    .foregroundColor(.black)
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                
            }.padding(.horizontal)
                .foregroundColor(.black)
            
        }.padding(.horizontal)
    }
}

#Preview {
    TransactionCard()
}
