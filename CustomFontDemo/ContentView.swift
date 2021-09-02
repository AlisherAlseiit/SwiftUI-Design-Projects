//
//  ContentView.swift
//  CustomFontDemo
//
//  Created by Алишер Алсейт on 07.08.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
                    .font(.custom("ZenLoop-Regular", size: 36))
        
    }
   
  /* run it to check font name, don't forget after adding new font go to info.plist and add some new settings
    init() {
        for familyName in UIFont.familyNames {
            print(familyName)
            
            for fontName in UIFont.fontNames(forFamilyName: familyName) {
                
                print("-- \(fontName)")
            }
            
            
            
        }
    }
    */
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
