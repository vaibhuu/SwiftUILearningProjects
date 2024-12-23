//
//  DismissButton.swift
//  learningConseptsOfSwiftUI
//
//  Created by Vaibhu Thakkar on 23/12/24.
//

import SwiftUI

struct DismissButton: View {
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack {
            Spacer()
            
            Button {
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
                    
            }
        }
        .padding()

    }
}

#Preview {
    DismissButton(isShowingDetailView: .constant(false))
}
