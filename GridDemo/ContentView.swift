//
//  ContentView.swift
//  GridDemo
//
//  Created by Алишер Алсейт on 08.08.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // LazyHGrid
        
        let fixedRows =
        Array(
        repeating: GridItem(.fixed(100), spacing: 5, alignment: .center),
        count: 3
        )
        
        ScrollView(.horizontal) {
        LazyHGrid(rows: fixedRows, content: {
            ForEach(0..<50) {index in
                Text("Placeholder \(index)")
            }
            
        })
        }
        
        // LazyVGrid
        
        
         let fixedColumns  =
         Array(
         repeating: GridItem(.fixed(100), spacing: 5, alignment: .center),
         count: 3
         )
         
        
        
         let flexibleColumns  =
         Array(
         repeating: GridItem(.flexible(minimum: 0), spacing: 5, alignment: .center),
         count: 3
         )
         
        
        
        let adaptiveColumns  =
            Array(
                repeating: GridItem(.adaptive(minimum: 100), spacing: 5, alignment: .center),
                count: 3
            )
        
        
        // here
        
        ScrollView {
            LazyVGrid(columns: adaptiveColumns, content: {
                
                ForEach(0..<15) { index in
                    Text("Placeholder \(index)")
                    
                }
                
                
            })
            
            
        }
         
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
