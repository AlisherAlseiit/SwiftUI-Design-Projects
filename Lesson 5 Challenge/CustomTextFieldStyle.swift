//
//  CustomTextFieldStyle.swift
//  Lesson 5 Challenge
//
//  Created by Алишер Алсейт on 07.08.2021.
//

import Foundation
import SwiftUI

struct CustomTextFieldStyle: TextFieldStyle {
    
    @State var icon = "person"
    
    func _body(configuration: TextField<Self._Label>) -> some View {
    
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .stroke(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing), lineWidth: 2)
                .frame(height: 40)
            
            HStack {
                Image(systemName: "\(icon)")
                    
                configuration
                    
            }
            .foregroundColor(.gray)
            .padding()
            
        }
    
    }
}
