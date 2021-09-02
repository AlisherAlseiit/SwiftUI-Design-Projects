//
//  ContentView.swift
//  Design M1L4 Demo
//
//  Created by Алишер Алсейт on 07.08.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        ZStack {
            
            LinearGradient(
                gradient: Gradient(stops: [.init(color: Color.red, location: 0), .init(color: Color.blue, location: 0.1), .init(color: Color.purple, location: 0.8)]),
                startPoint: UnitPoint(x: 0.5, y: 0),
                endPoint: UnitPoint(x: 0.5, y: 1))
                .ignoresSafeArea()
            
            VStack {
                
                // Linear Gradient
                ZStack {
                    Capsule()
                        .fill(LinearGradient(
                                gradient: Gradient(
                                    colors: [Color.green, Color.blue]),
                                startPoint: .leading,
                                endPoint: .trailing))
                        .frame(width: 200, height: 40)
                    Text("Hello")
                        .foregroundColor(.white)
                }
                
                // Radial Gradient
                ZStack {
                    Capsule()
                        .fill(RadialGradient(
                                gradient: Gradient(
                                    colors: [Color.green, Color.blue]),
                                center: .center,
                                startRadius: 0,
                                endRadius: 100))
                        .frame(width: 200, height: 40)
                    Text("Hello")
                        .foregroundColor(.white)
                }
                
                // Angular Gradient
                ZStack {
                    Capsule()
                        .fill(AngularGradient(
                                gradient: Gradient(
                                    colors: [Color.green, Color.blue]),
                                center: .center,
                                startAngle: Angle(degrees: 34),
                                endAngle: Angle(degrees: 100)))
                        .frame(width: 200, height: 40)
                    Text("Hello")
                        .foregroundColor(.white)
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
