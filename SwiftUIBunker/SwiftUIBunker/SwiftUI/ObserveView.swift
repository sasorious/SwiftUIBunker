//
//  ObserveView.swift
//  SwiftUIBunker
//
//  Created by Syafiq Sobri on 16/07/2024.
//

import SwiftUI

class UserData: ObservableObject {
    @Published var name: String = ""
}

struct ObserveView: View {
    @ObservedObject var userData = UserData()
    
    var body: some View {
        VStack {
            TextField("Enter your name", text: $userData.name)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            GreetingView(userData: userData)
        }
        .padding()
    }
}

struct GreetingView: View {
    @ObservedObject var userData: UserData
    
    var body: some View {
        Text("Hello, \(userData.name)!")
            .font(.largeTitle)
    }
}

struct ObserveView_Previews: PreviewProvider {
    static var previews: some View {
        ObserveView()
    }
}
