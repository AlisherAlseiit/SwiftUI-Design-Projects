//
//  ContentView.swift
//  ButtonStyleDemo
//
//  Created by Алишер Алсейт on 07.08.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            
            Color("background")
            
            VStack {
                
                //  Basic button
                Button("Text button") {
                    print("text Button")
                }
                
                // Button with Button Styles
                Button("Text button") {
                    print("text Button")
                }
                .buttonStyle(DefaultButtonStyle())
                
                
                // Basic button with styling
                Button("Text button with modifiers") {
                    print("text Button")
                }
                .padding(.horizontal, 50)
                .padding(.vertical, 10)
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(Capsule())
                
                
                // Button with label
                Button(action: { print("label button")}, label: {
                    
                    ZStack {
                        
                        Capsule()
                            .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                            .frame(height: 40)
                        Text("Label Button")
                            .foregroundColor(.white)
                    }
                    .shadow(radius: 5)
                    
                })
                
                // Button with custom style
                HStack {
                    ForEach(0..<3) { index in
                        Button("Custom") {
                            print("custom")
                        }
                        .buttonStyle(CustomButtonStyle())
                    }
                }
                
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
