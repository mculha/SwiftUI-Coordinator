//
//  ProfileRouter.swift
//  SwiftUI-Coordinator
//
//  Created by Melih Çulha on 4.06.2023.
//

import Foundation

final class ProfileRouter: ObservableObject, Router {
    typealias T = ProfileRouter.Screen

    @Published var path: [T] = .init()
    @Published var sheetItem: T?
    @Published var fullScreenItem: T?
    
    func route(_ type: RouteType<T>) {
        switch type {
        case .sheet(screen: let screen):
            self.sheetItem = screen
        case .cover(screen: let screen):
            self.fullScreenItem = screen
        case .push(screen: let screen):
            self.path.append(screen)
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
