//
//  ContentView.swift
//  TextFieldDemo
//
//  Created by Алишер Алсейт on 07.08.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var text = ""
    
    var body: some View {
        
        VStack {
            
            TextField("Enter your text", text: $text)
                .textFieldStyle(CustomTextFieldStyle())
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
