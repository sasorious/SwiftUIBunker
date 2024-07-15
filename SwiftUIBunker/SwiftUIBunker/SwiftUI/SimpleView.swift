//
//  SimpleView.swift
//  SwiftUIBunker
//
//  Created by Syafiq Sobri on 16/07/2024.
//

import SwiftUI

struct SimpleView: View {
    var body: some View {
        Text("Hello, SwiftUI!")
            .padding()
            .background(Color.yellow)
            .cornerRadius(10)
            .shadow(radius: 5)
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}

struct SimpleView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleView()
    }
}
