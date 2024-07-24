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
    
    var body: some View {
        VStack{
            Button(action: {}){
                Text(heading)
                    .font(.title)
                    .foregroundColor(textColor)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
            .frame(width: (UIScreen.main.bounds.width/2)-20)
            .frame(height: 90)
            .background(buttonColor)
            .cornerRadius(60)
        }
    }
}


#Preview {
    Component1(heading: "Apple", buttonColor: .black, textColor: .white)
}
