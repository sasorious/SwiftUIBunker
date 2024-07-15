//
//  GeometryView.swift
//  SwiftUIBunker
//
//  Created by Syafiq Sobri on 16/07/2024.
//

import SwiftUI

struct GeometryView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("Width: \(geometry.size.width)")
                    .background(Color.yellow)
                Text("Height: \(geometry.size.height)")
                    .background(Color.blue)
            }
        }
        .padding()
    }
}

struct GeometryView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryView()
    }
}
