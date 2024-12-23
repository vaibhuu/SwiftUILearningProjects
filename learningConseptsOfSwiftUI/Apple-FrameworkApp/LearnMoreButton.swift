//
//  LearnMoreButton.swift
//  learningConseptsOfSwiftUI
//
//  Created by Vaibhu Thakkar on 22/12/24.
//

import SwiftUI

struct LearnMoreButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .frame(width: 240, height: 55)
            .background(.red)
            .cornerRadius(10)
            .padding()
    }
}

#Preview {
    LearnMoreButton(title: "Learn More")
}
