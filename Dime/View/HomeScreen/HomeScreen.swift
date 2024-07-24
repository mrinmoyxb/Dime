//
//  HomeScreen.swift
//  Dime
//
//  Created by Mrinmoy Borah on 24/07/24.
//

import Foundation
import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack{
            
            // Top Screen
            ZStack {
                UnevenRoundedRectangle(cornerRadii: .init(bottomLeading: 60, bottomTrailing: 60))
                    .ignoresSafeArea()
                    .foregroundColor(Color("PrimaryColor"))
                    .frame(maxWidth: .infinity)
                    .frame(height: UIScreen.main.bounds.height/2)
                
                // User Info
                
                
                // Send and Receive Button
                Spacer()
                HStack(alignment: .bottom){
                    SendAndReceiveButton(heading: "Send", buttonColor: .black, textColor: .white, icon: "arrow.up", iconColor: .white)
                    SendAndReceiveButton(heading: "Receive", buttonColor: .white, textColor: .black, icon: "arrow.down", iconColor: .black)
                }.frame(maxWidth: .infinity)
                
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
