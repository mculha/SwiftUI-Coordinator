//
//  PurchaseViewModel.swift
//  SwiftUI-Coordinator
//
//  Created by Melih Çulha on 3.06.2023.
//

import Foundation
import SwiftUI

final class PurchaseViewModel: ObservableObject {
    
    let value: String
    
    /// - Parameter value: value can be anything. Just showing us we can pass any data from router
    init(value: String) {
        self.value = value
    }
}
