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
        }
    }
    
    
}

struct ProfileCoordinator_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCoordinator()
    }
}
