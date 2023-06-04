//
//  HomeFlowState.swift
//  SwiftUI-Coordinator
//
//  Created by Melih Çulha on 3.06.2023.
//

import Foundation

extension HomeRouter {
    
    enum Screen: Hashable, Identifiable {
        var id: UUID {
            return .init()
        }
        
        case purchase(value: String)
        case login(value: String)
    }
}

final class HomeRouter: ObservableObject, Router {
    typealias T = HomeRouter.Screen
    
    @Published var path: [T] = .init()
    @Published var sheetItem: T?
    @Published var fullScreenItem: T?

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
        self.path = .init()
    }
}
