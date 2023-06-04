//
//  ProfileCoordinator.swift
//  SwiftUI-Coordinator
//
//  Created by Melih Çulha on 4.06.2023.
//

import SwiftUI

struct ProfileCoordinator: View {
    
    @StateObject private var router: ProfileRouter = .init()
    
    var body: some View {
        NavigationStack(path: $router.path) {
            ProfileView(viewModel: .init(value: "Profile"))
                .environmentObject(router)
                .navigationDestination(for: ProfileRouter.Screen.self, destination: navigate(route:))
                .sheet(item: $router.sheetItem, content: navigate(route:))
                .fullScreenCover(item: $router.fullScreenItem, content: navigate(route:))
        }
    }
    
    @ViewBuilder private func navigate(route: ProfileRouter.Screen) -> some View {
        switch route {
        case .contact(value: let value):
            ContactView(viewModel: .init(value: value))
        }
    }
}

struct ProfileCoordinator_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCoordinator()
    }
}
