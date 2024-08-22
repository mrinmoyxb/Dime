//
//  Temp.swift
//  Dime
//
//  Created by Mrinmoy Borah on 22/08/24.
//

import SwiftUI

class DevModel: ObservableObject{
    @Published var textfield: String = ""
    
}

struct Temp: View {
    @StateObject var viewModel = DevModel()
    
    func inputButton(button: String){
        if(button == "⌫"){
            if(!viewModel.textfield.isEmpty){
                viewModel.textfield.removeLast()
            }
        }
        else{
            viewModel.textfield += button
        }
    }
    
    var body: some View {
        VStack{
            TextField(text: $viewModel.textfield) {
                Text("Enter")
                    .padding(.horizontal)
            }
            
            inputNum(num: "1", function: {inputButton(button: "1")})
            
            Text("2")
                .onTapGesture {
                    inputButton(button: "2")
                }
            
            Text("⌫")
                .onTapGesture {
                    inputButton(button: "⌫")
                }
        }
    }
}

struct inputNum: View{
    var num: String
    var function: () ->Void
    var body: some View{
        Text("1")
            .onTapGesture {
                function()
        }
    }
}
#Preview {
    Temp()
}
