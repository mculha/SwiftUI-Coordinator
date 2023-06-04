//
//  HomeCoordinator.swift
//  SwiftUI-Coordinator
//
//  Created by Melih Çulha on 3.06.2023.
//

import Foundation
import SwiftUI

struct HomeCoordinator: View {
    
    @StateObject private var router: HomeRouter = .init()
    
    var body: some View {
        NavigationStack(path: $router.path) {
            HomeView(viewModel: .init())
                .environmentObject(router)
                .navigationDestination(for: HomeRouter.Screen.self, destination: navigate(route:))
                .sheet(item: $router.sheetItem, content: navigate(route:))
                .fullScreenCover(item: $router.fullScreenItem, content: navigate(route:))
        }
    }
    
    @ViewBuilder private func navigate(route: HomeRouter.Screen) -> some View {
        switch route {
        case .purchase(value: let value):
            PurchaseView(viewModel: .init(value: value))
                .environmentObject(router)
        case .login(value: let value):
            LoginView(viewModel: .init(value: value))
        }
    }
    

}

