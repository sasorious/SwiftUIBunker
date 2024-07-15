//
//  ListView.swift
//  SwiftUIBunker
//
//  Created by Syafiq Sobri on 16/07/2024.
//

import SwiftUI

struct ListView: View {
    let items = ["Items 1", "Items 2", "Items 3"]
    
    var body: some View {
        List(items, id: \.self) { item in
        Text(item)
        }
    }
}

//struct ListView_Previews: PreviewProvider {
//    static var previews: some View {
//        ListView()
//    }
//}

#Preview {
    ListView()
}
