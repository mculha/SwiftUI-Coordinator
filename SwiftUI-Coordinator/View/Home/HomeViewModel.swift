//
//  HomeViewModel.swift
//  SwiftUI-Coordinator
//
//  Created by Melih Çulha on 3.06.2023.
//

import Foundation
import SwiftUI

class HomeViewModel: ObservableObject {
    
    @Binding var path: [HomeRoute]
    
    init(path: Binding<[HomeRoute]>) {
        _path = path
    }
    
}
