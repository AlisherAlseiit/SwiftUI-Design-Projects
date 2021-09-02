//
//  CustomButtonStyle.swift
//  ButtonStyleDemo
//
//  Created by Алишер Алсейт on 07.08.2021.
//

import Foundation
import SwiftUI

struct CustomButtonStyle: ButtonStyle {
//    @State var color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        
//        ZStack {
            
//            Capsule()
//                .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
//                .frame(width: 50,height: 40)
        
            configuration.label
                .foregroundColor(configuration.isPressed ? .white : .gray)
                .padding(.horizontal, 14)
                .padding(.vertical, 8)
                .background(Color("background1").opacity(configuration.isPressed ? 1 : 0))
                .cornerRadius(15)
                
              
       
//        }
        
//        .shadow(radius: 5)
//        .opacity(configuration.isPressed ? 0.2 : 1)
//        .scaleEffect(configuration.isPressed ? 0.96 : 1)
        
    }
    
}
