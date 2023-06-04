//
//  NewsRouter.swift
//  SwiftUI-Coordinator
//
//  Created by Melih Çulha on 4.06.2023.
//

import Foundation

final class NewsRouter: ObservableObject, Router {
    typealias T = NewsRouter.Screen

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
        path.removeLast()
    }
    
    func returnRoot() {
        path = .init()
    }
    
}


extension NewsRouter {
    enum Screen: Hashable, Identifiable {
        var id: UUID {
            return .init()
        }
        
        case notification
        
    }
}
