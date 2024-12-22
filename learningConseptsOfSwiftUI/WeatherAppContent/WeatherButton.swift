//
//  WeatherButton.swift
//  learningConseptsOfSwiftUI
//
//  Created by Vaibhu Thakkar on 22/12/24.
//

import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 300, height: 60)
            .background(backgroundColor.gradient)
            .foregroundStyle(textColor)
            .font(.system(size: 20, weight: .bold))
            .cornerRadius(12)
    }
}

#Preview {
    WeatherButton(title: "title", textColor: .white, backgroundColor: .blue)
}
//static WeatherButton_Preview: PreviewProvider {
//    static var previews: some View {
//        WeatherButton(title: "title", textColor: .white, backgroundColor: .blue)
//    }
//}
