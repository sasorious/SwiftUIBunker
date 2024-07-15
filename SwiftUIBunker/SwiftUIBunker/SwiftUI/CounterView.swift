//
//  CounterView.swift
//  SwiftUIBunker
//
//  Created by Syafiq Sobri on 16/07/2024.
//

import SwiftUI

struct CounterView: View {
    @State private var counter = 0
    
    var body: some View {
        VStack {
            Text("Counter: \(counter)")
                .font(.largeTitle)
            Button(action: { 
                counter += 1
            }) {
                Text("Increment")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView()
    }
}
