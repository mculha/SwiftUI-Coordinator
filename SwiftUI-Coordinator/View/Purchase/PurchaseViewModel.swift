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
    
    init(value: String) {
        self.value = value
    }
}
