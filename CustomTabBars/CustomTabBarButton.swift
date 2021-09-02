//
//  CustomTabBarButton.swift
//  CustomTabBars
//
//  Created by Алишер Алсейт on 08.08.2021.
//

import SwiftUI

struct CustomTabBarButton: View {
    
    @Binding var selectedTab: Tab
    var tab: TabInfo
    
    var body: some View {
        
        VStack(spacing: 5) {
            Rectangle()
                .foregroundColor(.blue)
                .frame(height: 2)
                .opacity(tab.view == selectedTab ? 1 : 0)
                .padding(.bottom, 10)
            
            Image(systemName: tab.icon)
                .frame(height: 20)
            Text(tab.name)
                .font(.caption)
        }
        .foregroundColor(tab.view == selectedTab ? .blue : .gray)
        .shadow(radius: tab.view == selectedTab ? 10 : 0)
        .padding(.vertical)
        .frame(height: 60)
        .onTapGesture {
            
            // Set the selected tab
            self.selectedTab = tab.view
        }
        
    }
}

//struct CustomTabBarButton_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomTabBarButton()
//    }
//}
