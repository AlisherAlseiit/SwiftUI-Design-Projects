//
//  ContentView.swift
//  Lesson 3 Challenge
//
//  Created by Алишер Алсейт on 06.08.2021.
//

import SwiftUI

struct ContentView: View {
    
    let triangle: Path = {
        
          Path({ path in
            
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLines([
                CGPoint(x: 100, y: 0),
                CGPoint(x: 50, y: 100),
                CGPoint(x: 0, y: 0)
            ])
        })
    }()
    var body: some View {
        
        HStack(alignment: .center) {

            // Blue chevron
            Path({ path in
                path.move(to: CGPoint(x: 0, y: 0))
                path.addLines([
                    CGPoint(x: 100, y: 0),
                    CGPoint(x: 200, y: 200),
                    CGPoint(x: 100, y: 400),
                    CGPoint(x: 0, y: 400),
                    CGPoint(x: 100, y: 200),
                    CGPoint(x: 0, y: 0)
                ])
            })
//            .fill(Color.blue)
            .stroke()
            .frame(width: 200, height: 400)
            
            // Yellow badge
            
            ZStack {
                
                triangle
                    .fill(Color.yellow)
                    .padding(.top, 15)
                
                triangle
                    .fill(Color.yellow)
                    .rotationEffect(Angle(degrees: 180))
                    .padding(.bottom, 15)
            }
            .frame(width: 100, height: 100)
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
