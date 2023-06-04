//
//  NewsCoordinator.swift
//  SwiftUI-Coordinator
//
//  Created by Melih Çulha on 4.06.2023.
//

import SwiftUI

struct NewsCoordinator: View {
    
    @StateObject private var router: NewsRouter = .init()
    
    var body: some View {
        NavigationStack(path: $router.path) {
            NewsView(viewModel: .init())
                .environmentObject(router)
                .navigationDestination(for: NewsRouter.Screen.self, destination: navigate(route:))
                .sheet(item: $router.sheetItem, content: navigate(route:))
                .fullScreenCover(item: $router.fullScreenItem, content: navigate(route:))
        }
    }
    
    @ViewBuilder private func navigate(route: NewsRouter.Screen) -> some View {
        switch route {
        case .notification:
            NotificationView(viewModel: .init())
        }
    }
    
}

struct NewsCoordinator_Previews: PreviewProvider {
    static var previews: some View {
        NewsCoordinator()
    }
}
