//
//  ContentView.swift
//  Lesson 5 Challenge
//
//  Created by Алишер Алсейт on 07.08.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var name = ""
    @State var email = ""
    
    var body: some View {
        
        VStack {
            
            TextField("Name", text: $name)
                .textFieldStyle(CustomTextFieldStyle(icon: "person"))
            
            TextField("Name", text: $email)
                .textFieldStyle(CustomTextFieldStyle(icon: "pencil"))
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
