//
//  SecondCustomButtonStyle.swift
//  Lesson 6 Challenge
//
//  Created by Алишер Алсейт on 07.08.2021.
//

import Foundation
import SwiftUI

struct SecondCusomButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        
        ZStack {
            
            Rectangle()
                .foregroundColor(.white)
                .frame(width: 400, height: 50)
                .cornerRadius(10)
    
                configuration.label
                    .foregroundColor(Color.gray)

            
        }
        .shadow(color: configuration.isPressed ? .white : .gray, radius: 20, x: 0.0, y: 0.0)
        
    }
}
