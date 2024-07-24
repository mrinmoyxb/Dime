//
//  UserInfo.swift
//  Dime
//
//  Created by Mrinmoy Borah on 24/07/24.
//

import SwiftUI

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

#Preview {
    CustomText()
}
