//
//  SendScreen.swift
//  Dime
//
//  Created by Mrinmoy Borah on 26/07/24.
//

import SwiftUI

struct SendScreen: View {
    
    @State var inputAmount: String = ""
    var body: some View {
        VStack{
            // Input Field
            VStack(alignment: .center){
                TextField(text: $inputAmount) {
                    Text("Enter amount")
                        .foregroundColor(.white)
                }
                .foregroundColor(.white)
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .padding(.vertical)
            .padding(.horizontal)
            
            // Digit
            VStack(spacing: 50){
                HStack(spacing: 80){
                    DigitCard(number: "1")
                    DigitCard(number: "2")
                    DigitCard(number: "3")
                }
                HStack(spacing: 80){
                    DigitCard(number: "4")
                    DigitCard(number: "5")
                    DigitCard(number: "6")
                }
                HStack(spacing: 80){
                    DigitCard(number: "7")
                    DigitCard(number: "8")
                    DigitCard(number: "9")
                }
                HStack(spacing: 80){
                    DigitCard(number: ".")
                    DigitCard(number: "0")
                    DigitCard(number: "x")
                }
            }
            
            // Send Button
            
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(.black))
    }
}

#Preview {
    SendScreen()
}
