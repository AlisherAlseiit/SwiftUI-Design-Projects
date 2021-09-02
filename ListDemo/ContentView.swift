//
//  ContentView.swift
//  ListDemo
//
//  Created by Алишер Алсейт on 08.08.2021.
//

import SwiftUI

struct ContentView: View {
    
    var items = ["cat", "dog", "bird", "mouse"]
    
    var body: some View {
        
        /*
        List(items, id: \.self) { item in
            
            Text(item)
            
        }
         */
        
        /*
        List {
            ForEach(items, id: \.self) { item in
                Text(item)
            }
        }
         */
        
        ScrollView {
            VStack {
                ForEach(items, id: \.self) { item in
                    Text(item)
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
