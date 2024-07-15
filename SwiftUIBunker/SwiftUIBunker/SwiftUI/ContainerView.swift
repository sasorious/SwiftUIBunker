//
//  ContainerView.swift
//  SwiftUIBunker
//
//  Created by Syafiq Sobri on 16/07/2024.
//

import SwiftUI

struct ContainerView: View {
    @State private var name = ""
    @State private var age = 0
    
    var body: some View {
        Form {
            Section(header: Text("Personal Info")) {
                TextField("Name", text: $name)
                Stepper(value: $age, in: 0...100) {
                    Text("Age: \(age)")
                }
            }
        }
        .padding()
    }
}

struct ContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerView()
    }
}
