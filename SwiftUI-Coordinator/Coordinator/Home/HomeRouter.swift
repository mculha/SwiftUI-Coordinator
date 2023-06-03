//
//  HomeFlowState.swift
//  SwiftUI-Coordinator
//
//  Created by Melih Çulha on 3.06.2023.
//

import Foundation
import SwiftUI

protocol Router {
    associatedtype T
    
    var path: [T] { get set }
    var sheetItem: T? { get set }
    var fullScreenItem: T? { get set }
    
    func route(_ type: RouteType<HomeRouter.Screen>)
}

enum RouteType<T> {
//    case push(_ screen: T) // It is not necessary to use because using Navigation Link directly
    case sheet(_ screen: T)
    case cover(_ screen: T)
}

extension HomeRouter {
    
    enum Screen: Hashable, Identifiable {
        var id: UUID {
            return .init()
        }
        
        case purchase(value: String)
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
}
