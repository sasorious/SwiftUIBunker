//
//  AnimateView.swift
//  SwiftUIBunker
//
//  Created by Syafiq Sobri on 16/07/2024.
//

import SwiftUI

struct AnimateView: View {
    @State private var scale: CGFloat = 1.0
    
    var body: some View {
        VStack {
            Text("Tap to scale")
                .font(.largeTitle)
                .scaleEffect(scale)
                .animation(.easeInOut(duration: 1), value: scale)
            Button(action: {
                scale += 0.1
            }) {
                Text("Scale Up")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

struct AnimateView_Previews: PreviewProvider {
    static var previews: some View {
        AnimateView()
    }
}
