//
//  Apple_FrameWorkContentView.swift
//  learningConseptsOfSwiftUI
//
//  Created by Vaibhu Thakkar on 22/12/24.
//
import SwiftUI

struct AppleFreameworkContentView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            
                ScrollView {
                    LazyVGrid(columns: viewModel.columns) {
                        ForEach(MockData.frameworks) { frameWork in
                            NavigationLink {
                                FrameworkDetailView(framework: frameWork)
                            } label: {
                                FrameworkTitleView(framework: frameWork)
                            }
                            
                        }
                    }
                }
                .navigationTitle("🍎 Framework")
            }
    }
}

#Preview {
    AppleFreameworkContentView()
}
