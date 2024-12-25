//
//  FrameworkGridViewModel.swift
//  learningConseptsOfSwiftUI
//
//  Created by Vaibhu Thakkar on 22/12/24.
//

import Foundation
import SwiftUI

class FrameworkGridViewModel: ObservableObject {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
