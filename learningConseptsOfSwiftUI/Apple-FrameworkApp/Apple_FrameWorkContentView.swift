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
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { frameWork in
                        FrameworkTitleView(framework: frameWork)
                            .onTapGesture {
                                viewModel.selectedFramework = frameWork
                            }
                    }
                }
            }
            .navigationTitle("🍎 Framework")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
    }
}

#Preview {
    AppleFreameworkContentView()
}
