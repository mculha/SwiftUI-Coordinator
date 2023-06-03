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
    @Binding var path: [HomeRouter.Screen]
    
    init(value: String, path: Binding<[HomeRouter.Screen]>) {
        self.value = value
        _path = path
    }
    
    func pop() {
        self.path.removeLast()
    }
    
    func returnRoot() {
        self.path.removeAll()
    }
}
