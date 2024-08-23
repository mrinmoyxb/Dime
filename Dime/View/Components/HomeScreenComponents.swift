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
            ZStack{
                HStack{
                    Text(heading)
                        .font(.system(size: 20))
                        .foregroundColor(textColor)
                        .fontWeight(.medium)
                    Image(systemName: icon)
                        .font(.system(size: 20))
                        .foregroundColor(iconColor)
                        .fontWeight(.bold)
                }
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


// Digit card
struct DigitCard: View{
    var number: String
    var insertNumber: () -> Void
    
    var body: some View{
        VStack{
            Button(action: {insertNumber()}){
            Text(number)
                .font(.system(size: 50))
                .foregroundColor(.white)
                .fontWeight(.semibold)
        }
        }.frame(width: 50, height: 50)
        .background(Color.black)
    }
}


// Buttons for spend and earn
struct SelectButton: View{
    
    var title: String
    var selectCategory: () -> Void
    
    @State var buttonColor: Bool = false
    let color3 = Color("MyPrimaryColor")
    
    var body: some View{
        ZStack{
            VStack{
                Text(title)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 10)
                    .font(.headline)
                    .background( buttonColor ? color3 : Color.white)
                    .foregroundColor(buttonColor ? Color.white : Color.black)
                    .cornerRadius(30)
                
            }.fixedSize()
        }
        .background(Color.black)
        .onTapGesture {
            buttonColor.toggle()
            selectCategory()
        }
        
    }
}



