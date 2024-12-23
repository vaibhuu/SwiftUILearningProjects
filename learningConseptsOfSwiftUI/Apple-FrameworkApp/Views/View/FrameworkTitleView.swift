//
//  FrameworkTitleView.swift
//  learningConseptsOfSwiftUI
//
//  Created by Vaibhu Thakkar on 23/12/24.
//

import SwiftUI

struct FrameworkTitleView: View {
    var framework: Framework
    
    var body: some View {
        VStack(spacing: 5) {
            Image(framework.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 90, height: 90)
            
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                
        }
        .padding()
    }
}
