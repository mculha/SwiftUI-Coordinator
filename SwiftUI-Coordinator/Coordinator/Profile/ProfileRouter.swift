//
//  ProfileRouter.swift
//  SwiftUI-Coordinator
//
//  Created by Melih Çulha on 4.06.2023.
//

import Foundation

final class ProfileRouter: ObservableObject, Router {
    typealias T = ProfileRouter.Screen

    var path: [T] = .init()
    var sheetItem: T?
    var fullScreenItem: T?
    
    func route(_ type: RouteType<T>) {
        switch type {
        case .sheet(screen: let screen):
            self.sheetItem = screen
        case .cover(screen: let screen):
            self.fullScreenItem = screen
        }
    }
    
    func pop() {
        self.path.removeLast()
    }
    
    func returnRoot() {
        self.path.removeAll()
    }
}

extension ProfileRouter {
    enum Screen: Hashable, Identifiable {
        var id: UUID {
            return .init()
        }
        
        case contact(value: String)
    }
}
