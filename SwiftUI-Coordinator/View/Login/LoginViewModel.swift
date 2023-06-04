//
//  LoginViewModel.swift
//  SwiftUI-Coordinator
//
//  Created by Melih Çulha on 4.06.2023.
//

import Foundation

final class LoginViewModel: ObservableObject {
    
    let value: String
    
    /// - Parameter value: value can be anything. Just showing us we can pass any data from router
    init(value: String) {
        self.value = value
    }
    
}
