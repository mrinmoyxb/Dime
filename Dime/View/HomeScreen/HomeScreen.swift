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
        VStack{
            
            // Top Screen
            ZStack {
                UnevenRoundedRectangle(cornerRadii: .init(bottomLeading: 50, bottomTrailing: 50))
                    .ignoresSafeArea()
                    .foregroundColor(Color("MyPrimaryColor"))
                    .frame(maxWidth: .infinity)
                    .frame(height: UIScreen.main.bounds.height/2)
                
                VStack(spacing: 60){
                    // User Info
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
                        Spacer()
                    }
                    
                    // Send and Receive Button
                    HStack(alignment: .bottom){
                        SendAndReceiveButton(heading: "Send", buttonColor: .black, textColor: .white, icon: "arrow.up", iconColor: .white)
                        SendAndReceiveButton(heading: "Receive", buttonColor: .white, textColor: .black, icon: "arrow.down", iconColor: .black)
                    }
                }
                
            }
            Spacer()
            
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
    }
}

#Preview {
    HomeScreen()
}
