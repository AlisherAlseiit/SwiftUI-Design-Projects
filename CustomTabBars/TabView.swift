//
//  ContentView.swift
//  CustomTabBars
//
//  Created by Алишер Алсейт on 08.08.2021.
//

import SwiftUI



struct TabView: View {
    
    @State var tabs = [TabInfo]()
    @State var selectedTab = Tab.Home
    
    var body: some View {
        
        GeometryReader { geo in
            
            VStack {
                
                // Swtich the view according to the currently selected tab
                switch(selectedTab) {
                case Tab.Home:
                    // Show Home
                    Text("Home")
                case Tab.Feed:
                    // Show Feed
                    Text("Feed")
                case Tab.Add:
                    // Show Add
                    Text("Add")
                case Tab.Account:
                    // Show Account
                    Text("Account")
                case Tab.Settings:
                    // Show Settings
                    Text("Settings")
                }
                
                
                
                Spacer()
                
                // Tab BAr
                VStack {
                    Path({ path in
                        path.move(to: CGPoint(x: 0, y: 0))
                        path.addLine(to: CGPoint(x: geo.size.width, y: 0))
                    })
                    .stroke(Color.gray)
                    
                    HStack(spacing: 0) {
                        Spacer()
                        ForEach(tabs) { tab in
                            
                          CustomTabBarButton(selectedTab: $selectedTab, tab: tab)
                            .frame(width: (geo.size.width - 40)/5)
                            
                        }
                        Spacer()
                    }
                }
                .frame(height: 70)
                
                
            }
            
            
        }
        
        .onAppear(perform: {
            
            // Create tabs
            var newTabs = [TabInfo]()
            newTabs.append(TabInfo(view: Tab.Home, icon: "person", name: "Home"))
            newTabs.append(TabInfo(view: Tab.Feed, icon: "envelope", name: "Feed"))
            newTabs.append(TabInfo(view: Tab.Add, icon: "magnifyingglass", name: "Add"))
            newTabs.append(TabInfo(view: Tab.Account, icon: "star.fill", name: "Account"))
            newTabs.append(TabInfo(view: Tab.Settings, icon: "star", name: "Settings"))
            self.tabs = newTabs
        })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabView()
    }
}
