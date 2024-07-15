//
//  StacksView.swift
//  SwiftUIBunker
//
//  Created by Syafiq Sobri on 16/07/2024.
//

import SwiftUI

struct StacksView: View {
    var body: some View {
        VStack {
            Text("Hello, SwiftUI!")
                .font(.largeTitle)
            HStack {
                Text("This")
                Text("is")
                Text("a")
                Text("horizontal")
                Text("stack")
            }
            .background(Color.blue)
            ZStack {
                Text("This is")
                    .font(.largeTitle)
                Text("a ZStack")
                    .offset(y: 30)
            }
            .background(Color.yellow)
        }
        .padding()
        .background(Color.green)
    }
}

struct StacksView_Previews: PreviewProvider {
    static var previews: some View {
        StacksView()
    }
}
