//
//  HomeScreen.swift
//  Dime
//
//  Created by Mrinmoy Borah on 24/07/24.
//

import Foundation
import SwiftUI

struct HomeScreen: View {
    
    let userName: String = "Mrinmoy"
    @State var passwordVisibility = false
    
    
    var body: some View {
        let color1 = Color("MyPrimaryColor")
        let color3 = Color("Blue3")
            // Top Screen
            ScrollView(.vertical){
                LazyVStack{
                    
                    ZStack {
                        UnevenRoundedRectangle(cornerRadii: .init(bottomLeading: 50, bottomTrailing: 50))
                            .fill(
                                    LinearGradient(
                                        gradient: Gradient(colors: [color1, color3]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )
                                )
                            .ignoresSafeArea()
                            .frame(maxWidth: .infinity)
                            .frame(height: UIScreen.main.bounds.height/2+15)
                            
                        
                        VStack(spacing: 30){
                            Spacer()
                            
                            // Welcome User
                            HStack{
                                Circle()
                                    .frame(width: 80, height: 80)
                                    .padding(.horizontal)
                                
                                VStack(alignment: .leading, spacing: -2){
                                    Text("Hello")
                                        .font(.system(size: 20))
                                    Text(userName)
                                        .fontWeight(.bold)
                                        .font(.system(size: 30))
                                }
                                .foregroundColor(.white)
                                Spacer()
                            }
                            
                            // Heading and Balance
                            HStack{
                                VStack(alignment: .leading){
                                    Text("Your Balance")
                                        .font(.system(size: 22))
                                        .fontWeight(.medium)
                                    HStack{
                                        Text(passwordVisibility ? "200000.00" : "*********")
                                            .font(.system(size: 50))
                                            .fontWeight(.bold)
                                            .animation(passwordVisibility ? .easeInOut(duration: 0.1) : nil)
                                            .lineLimit(1)
                                        
                                        // Password check uncheck
                                        Spacer()
                                        Button(action: {passwordVisibility.toggle()}){
                                            Image(systemName: passwordVisibility ? "eye.fill" : "eye.slash.fill")
                                                .padding([.leading,.trailing], 5)
                                                .font(.system(size: 25))
                                                .foregroundColor(.white)
                                        }
                                    }
                                }
                                .foregroundColor(.white)
                                .padding(.horizontal)
                            }
                            
                            Spacer()
                                .frame(height: 5)
                            
                            // Send and Receive Button
                            HStack(alignment: .bottom){
                                SendAndReceiveButton(heading: "Send", buttonColor: .black, textColor: .white, icon: "arrow.up", iconColor: .white)
                                SendAndReceiveButton(heading: "Receive", buttonColor: .white, textColor: .black, icon: "arrow.down", iconColor: .black)
                            }
                            Spacer()
                                .frame(height: 0.5)
                        }
                        
                    }
                    
                    // Second Part
                    // Quick Send Users - heading
                    HStack{
                        Text("Quick send")
                            .foregroundColor(.white)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Spacer()
                    }
                    .padding(.horizontal)
                    .padding(.vertical)
                    
                    // Users
                    ScrollView(.horizontal){
                        LazyHStack{
                            ForEach(0...4, id: \.self){i in
                                QuickSendUsers()
                                    .padding(.horizontal, 3)
                            }
                        }.padding(.horizontal)
                    }
                    
                    // Last Transactions - heading
                    HStack{
                        Text("Last Transactions")
                            .foregroundColor(.white)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Spacer()
                    }
                    .padding(.horizontal)
                    .padding(.vertical)
                    
                    ForEach(0...2, id: \.self){ transaction in
                        TransactionCard(imageIcon: "car.circle.fill", paymentHeading: "Taxi", date: "20/10/2024", amount: "+ 1000000000")
                    }
                    
                    
                }
            }
            .ignoresSafeArea()
            .background(Color.black)
        }
}

#Preview {
    HomeScreen()
}
