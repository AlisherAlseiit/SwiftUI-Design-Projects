//
//  ContentView.swift
//  ShapesDemo
//
//  Created by Алишер Алсейт on 06.08.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            
            Image("beach")
                .resizable()
                .clipShape(Capsule())
            
            // Cricle
            ZStack {
                Circle()
                    .foregroundColor(.red)
                    .frame(width: 100)
                
                Circle()
                    .stroke(Color.black, style: StrokeStyle(lineWidth: 10,   dash: [1, 1], dashPhase: 1))
                    .frame(width: 100)
            }
            
            // Ellipse
            Ellipse()
                .frame(width: 100, height: 50)
            
            // Rectangle
            Rectangle()
                .frame(width: 100, height: 200)
                .cornerRadius(25)
            
            // Rounded Rectnge
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .foregroundColor(.blue)
            
            // Capsule
            ZStack {
                Capsule()
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 40)
                Text("Hello")
                    .foregroundColor(.white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
