//
//  HomeViewModel.swift
//  SwiftUI-Coordinator
//
//  Created by Melih Çulha on 3.06.2023.
//

import Foundation
import SwiftUI

class HomeViewModel: ObservableObject {
    
    @Binding var path: [HomeRouter.Screen]
    
    init(path: Binding<[HomeRouter.Screen]>) {
        _path = path
    }
    
}
