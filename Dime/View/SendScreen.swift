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
            VStack{
                QuickSendUsers()
                TextField(text: $inputAmount) {
                    Text("Hello")
                        .foregroundColor(.white)
                }
            }
            // Digit
            VStack(spacing: 0){
                HStack{
                    DigitCard(number: "1")
                    DigitCard(number: "2")
                    DigitCard(number: "3")
                }
                HStack{
                    DigitCard(number: "4")
                    DigitCard(number: "5")
                    DigitCard(number: "6")
                }
                HStack{
                    DigitCard(number: "7")
                    DigitCard(number: "8")
                    DigitCard(number: "9")
                }
                HStack{
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
