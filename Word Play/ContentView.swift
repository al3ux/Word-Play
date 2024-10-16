//
//  ContentView.swift
//  word play
//
//  Created by alex acevedo on 10/2/24.
//

import SwiftUI

struct Words {
    var noun0 = ""
    var noun1 = ""
    var noun2 = ""
    var noun3 = ""
    
    var vegetable0 = ""
    var vegetable1 = ""
    var verb = ""
    var color0 = ""
    var color1 = ""
    
    var adjective0 = ""
    var adjective1 = ""
    var adjective2 = ""
    var adjective3 = ""
    
    
}

struct ContentView: View {
    @State private var words = Words()
    var body: some View {
        NavigationView() {
            VStack {
                Text("Please enter the requested words below!")
                HStack {
                    CustomTextField(placeholder: "noun", variable: $words.noun0)
                    CustomTextField(placeholder: "noun", variable: $words.noun1)
                    CustomTextField(placeholder: "noun", variable: $words.noun2)
                }
                HStack {
                    CustomTextField(placeholder: "noun", variable: $words.noun3)
                    CustomTextField(placeholder: "vegtable", variable: $words.vegetable0)
                    CustomTextField(placeholder: "vegtable", variable: $words.vegetable1)
                }
                HStack {
                    CustomTextField(placeholder: "verb", variable: $words.verb)
                    CustomTextField(placeholder: "color", variable: $words.color0)
                    CustomTextField(placeholder: "color", variable: $words.color1)
                }
                HStack {
                    CustomTextField(placeholder: "adjective", variable: $words.adjective0)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective1)
                }
                HStack {
                    CustomTextField(placeholder: "adjective", variable: $words.adjective2)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective3)
                }
                Spacer()
                NavigationLink("Next", destination: StoryView(words: words))
                
            }
            
        }
        .navigationTitle("Word Play")
    }
}


#Preview {
    ContentView()
}

struct CustomTextField: View {
    let placeholder : String
    let variable : Binding<String>
    var body: some View {
        TextField(placeholder,text : variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
    }
}
