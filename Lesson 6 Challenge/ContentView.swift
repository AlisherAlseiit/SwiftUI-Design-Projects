//
//  ContentView.swift
//  Lesson 6 Challenge
//
//  Created by Алишер Алсейт on 07.08.2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        VStack {
            Button(action: { print("custom")}, label: {
                    HStack {
                        Image(systemName: "envelope")
                        Text("Contact")
                    }
            })
            .buttonStyle(CusomButtonStyle())
            .padding(.bottom, 50)
            
           
            Button(action: { print("Ghost Button")}, label: {
                
                Text("Ghost Button")
            })
            .buttonStyle(SecondCusomButtonStyle())
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
