//
//  LoginViewModel.swift
//  SwiftUI-Coordinator
//
//  Created by Melih Çulha on 4.06.2023.
//

import Foundation

final class LoginViewModel: ObservableObject {
    
    let value: String
    
    init(value: String) {
        self.value = value
    }
    
}
