//
//  ContentView.swift
//  PracticeUI
//
//  Created by scholar on 8/10/23.
//

import SwiftUI

struct ContentView: View {
   
    @State private var presentAlert = false
    
    @State private var name = ""
    @State private var nameTitle = "What is your name?"
    
    @State private var age = ""
    @State private var ageTitle = "What is your age?"
    
    var body: some View {
        VStack {
            Text(nameTitle)
            TextField("Enter your name...", text: $name)
            
            Text(ageTitle)
            TextField("Enter your age...", text: $age)
           
            Button("Submit") {
                presentAlert = true
                nameTitle = "Your name is \(name)."
                ageTitle = "You are \(age) years old."
            }
        }
        .padding()
        .alert("Nice!", isPresented: $presentAlert) {
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
