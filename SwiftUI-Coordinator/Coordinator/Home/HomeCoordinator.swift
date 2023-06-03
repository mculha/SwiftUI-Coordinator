//
//  HomeCoordinator.swift
//  SwiftUI-Coordinator
//
//  Created by Melih Çulha on 3.06.2023.
//

import Foundation
import SwiftUI

struct HomeCoordinator: View {
    
    @StateObject var flowState: HomeFlowState = .init()
    
    var body: some View {
        NavigationStack(path: $flowState.path) {
            HomeView(viewModel: .init(path: $flowState.path))
                .navigationDestination(for: HomeRoute.self, destination: navigation(route:))
        }
    }
    
    @ViewBuilder func navigation(route: HomeRoute) -> some View {
        switch route {
        case .purchase(value: let value):
            PurchaseView(viewModel: .init(value: value, path: $flowState.path))
        }
    }
}

