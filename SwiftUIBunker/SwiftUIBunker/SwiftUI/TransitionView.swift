//
//  TransitionView.swift
//  SwiftUIBunker
//
//  Created by Syafiq Sobri on 16/07/2024.
//

import SwiftUI

struct TransitionView: View {
    @State private var isVisible = false
    
    var body: some View {
        VStack {
            if isVisible {
                Text("Hello, SwiftUI!")
                    .font(.largeTitle)
                    .transition(.slide)
            }
            Button(action: {
                withAnimation {
                    isVisible.toggle()
                }
            }) {
                Text("Toggle Visibility")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

struct TransitionView_Previews: PreviewProvider {
    static var previews: some View {
        TransitionView()
    }
}
