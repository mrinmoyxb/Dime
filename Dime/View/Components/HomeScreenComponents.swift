//
//  UserInfo.swift
//  Dime
//
//  Created by Mrinmoy Borah on 24/07/24.
//

import SwiftUI

// Custom Text
struct CustomText: View {
    var body: some View {
        
        HStack{
            VStack(alignment: .leading){
                Text("Your Balance")
                Text("999")
            }
            Spacer()
        }
    }
}

// Send and Receive Button of Home Screen
struct SendAndReceiveButton: View {
    var heading: String
    var buttonColor: Color
    var textColor: Color
    var icon: String
    var iconColor: Color
    
    var body: some View {
            Button(action: {}){
                Text(heading)
                    .font(.system(size: 20))
                    .foregroundColor(textColor)
                    .fontWeight(.medium)
                Image(systemName: icon)
                    .font(.system(size: 20))
                    .foregroundColor(iconColor)
                    .fontWeight(.bold)
            }
            .frame(width: (UIScreen.main.bounds.width/2)-20)
            .frame(height: 80)
            .background(buttonColor)
            .cornerRadius(60)
    }
}


// Common Users
struct QuickSendUsers: View{
    var body: some View{
        Button(action: {}){
            Circle()
                .frame(width: 70, height: 70)
                .foregroundColor(.white)
        }
    }
}


