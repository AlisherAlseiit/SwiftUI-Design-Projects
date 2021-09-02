//
//  ContentView.swift
//  Form Demo
//
//  Created by Алишер Алсейт on 08.08.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var name = ""
    @State var email = ""
    @State var darkMode = false
    @State var selectedOption = ""
    
    var options = ["option 1", "option 2", "option 3"]
    
    var body: some View {
        
        
        NavigationView {
            Form {
                Text("\(name), Hello")
                
                
                Section(header: Text("Details"), footer: Text("We will respect your privacy")) {
                    TextField("Name", text: $name)
                    TextField("Email", text: $email)
                }
                
                Section(header: Text("additional Options")) {
                    Toggle(isOn: $darkMode, label: {
                        Text("Dark Mode")
                    })
                }
                
                Picker("Select an option", selection: $selectedOption) {
                    
                    ForEach(options, id: \.self) { option in
                        Text(option)
                    }
                }
                Section {
                    Button("Save") {
                        
                    }
                }
                
            }
            .navigationTitle("Form")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
