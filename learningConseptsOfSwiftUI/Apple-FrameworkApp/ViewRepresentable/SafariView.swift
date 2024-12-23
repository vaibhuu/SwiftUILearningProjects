//
//  SafariView.swift
//  learningConseptsOfSwiftUI
//
//  Created by Vaibhu Thakkar on 23/12/24.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
        
    }
    
    typealias UIViewControllerType = SFSafariViewController
    
    var url: URL
    
//    func makeUIView(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
//        return SFSafariViewController(url: url)
//    }
    
}
