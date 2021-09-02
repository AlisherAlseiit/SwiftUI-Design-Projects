//
//  ContentView.swift
//  PathDemo
//
//  Created by Алишер Алсейт on 06.08.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var degree = 0.0
    
    let customShape: Path = {
        
        return  Path({ path in
            
            // Series of command to draw your path
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: 0, y: 25))
            path.addLine(to: CGPoint(x: 200, y: 25))
            path.addLine(to: CGPoint(x: 200, y: 0))
            path.addLine(to: CGPoint(x: 0, y: 0))
            path.closeSubpath()
            
            path.move(to: CGPoint(x: 0, y: 200))
            path.addLines([
                CGPoint(x: 0, y: 300),
                CGPoint(x: 100, y: 300),
                CGPoint(x: 100, y: 200),
                CGPoint(x: 0, y: 200),
                CGPoint(x: 0, y: 300)
            ])
           
            
            
            
        })
        
    }()
    
    var body: some View {
        
        VStack {
            
            customShape
                
                .fill(Color.red)
                .frame(width: 100, height: 300, alignment: .center)
                .rotationEffect(Angle(degrees: degree))
            
            //            .scaleEffect(0.5)
            //            .stroke(Color.blue, style: StrokeStyle(lineWidth: 2))
            
            //            Image("beach")
            //                .resizable()
            //                .clipShape(customShape)
            
            Button(action: {
                degree += 10
            }, label: {
                Image(systemName: "hand.tap")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.red)
            })
            .padding(.top, 20)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
