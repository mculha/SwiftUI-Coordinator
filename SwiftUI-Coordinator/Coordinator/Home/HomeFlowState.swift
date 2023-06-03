//
//  HomeFlowState.swift
//  SwiftUI-Coordinator
//
//  Created by Melih Çulha on 3.06.2023.
//

import Foundation
import SwiftUI

enum HomeRoute: Hashable {
    case purchase(value: String)
}

final class HomeFlowState: ObservableObject {
    
    @Published var path: [HomeRoute] = .init()
    
}
