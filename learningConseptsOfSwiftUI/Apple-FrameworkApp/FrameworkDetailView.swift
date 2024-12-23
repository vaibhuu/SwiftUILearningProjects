//
//  FrameworkDetailView.swift
//  learningConseptsOfSwiftUI
//
//  Created by Vaibhu Thakkar on 22/12/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State var isShowingSafariView = false
    
    var body: some View {
        
        VStack {
            DismissButton(isShowingDetailView: $isShowingDetailView)
            Spacer()
            
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
                LearnMoreButton(title: "Learn More")
            }
            .sheet(isPresented: $isShowingSafariView, content: {
                SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
            })
        }
        
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.frameworks.first!, isShowingDetailView: .constant(true))
}
