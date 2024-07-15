//
//  MixFrameworkView.swift
//  SwiftUIBunker
//
//  Created by Syafiq Sobri on 14/07/2024.
//

import SwiftUI
import UIKit

struct MixFrameworkView: View {
    var body: some View {
        UIKitViewControllerWrapper()
            .edgesIgnoringSafeArea(.all)
    }
}

struct UIKitViewControllerWrapper: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        return ViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        
        let label = UILabel()
        label.text = "Hello from UIKit!"
        label.textColor = .white
        label.textAlignment = .center
        label.frame = view.bounds
        
        view.addSubview(label)
    }
}

#Preview {
    MixFrameworkView()
}
