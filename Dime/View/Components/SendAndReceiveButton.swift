//
//  Component1.swift
//  Dime
//
//  Created by Mrinmoy Borah on 24/07/24.
//

import SwiftUI

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


#Preview {
    SendAndReceiveButton(heading: "Apple", buttonColor: .black, textColor: .white, icon: "arrow.up", iconColor: .white)
}
