//
//  SendScreen.swift
//  Dime
//
//  Created by Mrinmoy Borah on 26/07/24.
//

import SwiftUI

struct SendScreen: View {
    
    @StateObject var sendPaymentViewModel = SendPaymentViewModel()
    @StateObject var spendAndEarnViewModel = SpendAndEarnViewModel()
    
    var body: some View {
        VStack{
            
            Spacer()
            
            // Input Field
            VStack{
                    TextField(text: $sendPaymentViewModel.amountInput) {
                        Text("0.0")
                            .foregroundColor(.white)
                    }
                    .font(.system(size: 50))
                    .frame(width: .infinity, alignment: .center)
            }
            .foregroundColor(.white)
            .padding([.leading])
            .padding(.vertical)
            .padding(.horizontal)
            
            //Category Option
            ScrollView(.horizontal){
                LazyHStack{
                    ForEach(SpendCategory.allCases){spend in
                        SelectButton(title: spend.rawValue, selectCategory: {sendPaymentViewModel.inputCategory(spend.rawValue)})
                    }
                    SelectButton(title: "+", selectCategory: {sendPaymentViewModel.inputCategory("")})
                }
                .frame(height: 60)
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 10)
            }
            Spacer()
                .frame(height: 35)
            
            // Digit
            VStack(spacing: 50){
                HStack(spacing: 80){
                    DigitCard(number: "1", insertNumber: {sendPaymentViewModel.inputNumber("1")})
                    DigitCard(number: "2", insertNumber: {sendPaymentViewModel.inputNumber("2")})
                    DigitCard(number: "3", insertNumber: {sendPaymentViewModel.inputNumber("3")})
                }
                HStack(spacing: 80){
                    DigitCard(number: "4", insertNumber: {sendPaymentViewModel.inputNumber("4")})
                    DigitCard(number: "5", insertNumber: {sendPaymentViewModel.inputNumber("5")})
                    DigitCard(number: "6", insertNumber: {sendPaymentViewModel.inputNumber("6")})
                }
                HStack(spacing: 80){
                    DigitCard(number: "7", insertNumber: {sendPaymentViewModel.inputNumber("7")})
                    DigitCard(number: "8", insertNumber: {sendPaymentViewModel.inputNumber("8")})
                    DigitCard(number: "9", insertNumber: {sendPaymentViewModel.inputNumber("9")})
                }
                HStack(spacing: 80){
                    DigitCard(number: ".", insertNumber: {sendPaymentViewModel.inputNumber(".")})
                    DigitCard(number: "0", insertNumber: {sendPaymentViewModel.inputNumber("0")})
                    Button(action: {sendPaymentViewModel.inputNumber("X")}, label: {
                        Image(systemName: "delete.left.fill")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                    })
                }
            }
            
            // Send Button
            Spacer()
                .frame(height: 50)
            
            HStack{
                Button(action: {spendAndEarnViewModel.postSpendingRequest(amount: Double(sendPaymentViewModel.amountInput) ?? 0.0, category: sendPaymentViewModel.categoryOfSpending)}, label: {
                    ZStack{
                        Circle()
                            .frame(width: 80, height: 80)
                            .foregroundColor(Color("MyPrimaryColor"))
                        
                        Image(systemName: "arrow.forward")
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                })
            }.frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing, 40)
            
            
           Spacer()
                .frame(height: 20)
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(.black))
    }
}

#Preview {
    SendScreen()
}
