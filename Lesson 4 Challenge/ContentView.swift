//
//  ContentView.swift
//  Lesson 4 Challenge
//
//  Created by Алишер Алсейт on 07.08.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        let transparent = Color.init(.sRGB, red: 0, green: 0, blue: 0, opacity: 0)
        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            ZStack {
                
                Circle()
                    .fill(RadialGradient(gradient: Gradient(colors: [Color.black, Color.blue]), center: UnitPoint(x: 0.8, y: 0.7), startRadius: 1, endRadius: 350))
                
                Circle()
                    .fill(RadialGradient(gradient: Gradient(colors: [Color.white, transparent]), center: UnitPoint(x: 0.1, y: 0.3), startRadius: 1, endRadius: 250))
                    
            }
            .padding()
            .shadow(color: .white, radius: 20, x: -8, y: -8)
            
            
            Circle()
                .fill(Color.yellow)
                .padding(.top, -500)
                .padding(.trailing, 200)
                .blur(radius: 90)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
