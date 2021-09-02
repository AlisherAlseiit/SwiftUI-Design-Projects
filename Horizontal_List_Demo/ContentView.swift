//
//  ContentView.swift
//  Horizontal_List_Demo
//
//  Created by Алишер Алсейт on 08.08.2021.
//

import SwiftUI

struct ContentView: View {
    
    let items = ["item 1", "item 2", "item 3", "item 4"]
    
    var body: some View {
        
        /*
        TabView {
            ForEach(items, id: \.self) { item in
                Text(item)
                
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        */
        
        let row = GridItem(.fixed(50), spacing: 5, alignment: .center)
        
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: [row], content: {
                
                ForEach(0..<20, id: \.self) { index in
                    Text("item \(index)")
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
