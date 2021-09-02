//
//  CustombuttonStyle.swift
//  Lesson 6 Challenge
//
//  Created by Алишер Алсейт on 07.08.2021.
//

import Foundation
import SwiftUI

struct CusomButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        
        ZStack {
            
            Rectangle()
                .stroke(Color.black, lineWidth: 2)
                .frame(width: 400, height: 50)
    
                configuration.label
                    .foregroundColor(configuration.isPressed ? .white : .black)
       
            
            
            
            

        }
        .background(configuration.isPressed ? Color.black : Color.white)
        
    }
}
