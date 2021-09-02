//
//  ContentView.swift
//  Lesson 2 Challenge
//
//  Created by Алишер Алсейт on 06.08.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .stroke(Color.blue, lineWidth: 4)
                .frame(width: 250, height: 250)
                
                
            Circle()
                .stroke(Color.black)
                .frame(width: 240)
            
            Ellipse()
                .stroke(Color.black, style: StrokeStyle(dash: [5,8]))
                .frame(width: 120, height: 240)
            
            Ellipse()
                .stroke(Color.black, style: StrokeStyle(dash: [5,8]))
                .frame(width: 240, height: 120)
            
            Circle()
                .stroke(Color.red, lineWidth: 10)
                .frame(width: 100)
                
            Circle()
                .stroke(Color.orange, lineWidth: 10)
                .frame(width:85)
            
            Circle()
                .stroke(Color.yellow, lineWidth: 10)
                .frame(width:65)
                
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
