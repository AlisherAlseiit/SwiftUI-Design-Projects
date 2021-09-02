//
//  CustomTextFieldStyle.swift
//  TextFieldDemo
//
//  Created by Алишер Алсейт on 07.08.2021.
//

import Foundation
import SwiftUI

struct CustomTextFieldStyle: TextFieldStyle {
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        
        
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color.gray)
                .frame(height: 40)
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                // This is referencing the textField
                configuration
                
            }
            .padding(.horizontal)
        }
        .shadow(radius: 5)
        
    }
    
}
