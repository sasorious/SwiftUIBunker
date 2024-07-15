//
//  BindingView.swift
//  SwiftUIBunker
//
//  Created by Syafiq Sobri on 16/07/2024.
//

import SwiftUI

struct BindingView: View {
    @State private var name = ""
    
    var body: some View {
        VStack {
            TextField("Enter your name", text: $name)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            GreetingsView(name: $name)
        }
        .padding()
    }
}

struct GreetingsView: View {
    @Binding var name: String
    
    var body: some View {
        Text("Hello, \(name)!")
            .font(.largeTitle)
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView()
    }
}
