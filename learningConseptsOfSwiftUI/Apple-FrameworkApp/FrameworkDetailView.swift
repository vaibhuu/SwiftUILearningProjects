//
//  FrameworkDetailView.swift
//  learningConseptsOfSwiftUI
//
//  Created by Vaibhu Thakkar on 22/12/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @State var isShowingSafariView = false
    
    var body: some View {
        
        VStack {            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .multilineTextAlignment(.leading)
                .foregroundStyle(Color(.label))
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                Label("Learn More", systemImage: "book.fill")                    
            }
            .buttonStyle(.bordered)
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
            .tint(.red)
            
            .sheet(isPresented: $isShowingSafariView, content: {
                SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
            })
        }
        
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.frameworks.first!)
}
