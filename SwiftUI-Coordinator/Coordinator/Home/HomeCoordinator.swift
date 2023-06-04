//
//  HomeCoordinator.swift
//  SwiftUI-Coordinator
//
//  Created by Melih Çulha on 3.06.2023.
//

import Foundation
import SwiftUI

struct HomeCoordinator: View {
    
    @StateObject var router: HomeRouter = .init()
    
    var body: some View {
        NavigationStack(path: $router.path) {
            HomeView(viewModel: .init(path: $router.path))
                .environmentObject(router)
                .navigationDestination(for: HomeRouter.Screen.self, destination: navigation(route:))
                .sheet(item: $router.sheetItem, content: navigation(route:))
                .fullScreenCover(item: $router.fullScreenItem, content: navigation(route:))
        }
    }
    
    @ViewBuilder private func navigation(route: HomeRouter.Screen) -> some View {
        switch route {
        case .purchase(value: let value):
            PurchaseView(viewModel: .init(value: value))
                .environmentObject(router)
        case .login(value: let value):
            LoginView(viewModel: .init(value: value))
        }
    }
    

}

