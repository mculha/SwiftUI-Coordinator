//
//  HomeView.swift
//  SwiftUI-Coordinator
//
//  Created by Melih Çulha on 3.06.2023.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel: HomeViewModel
    @EnvironmentObject var router: HomeRouter

    var body: some View {
        VStack(spacing: 10) {
            Button("Navigate Purchase") {
                router.route(.push(.purchase(value: "Purchase \(Int.random(in: 0...1000))")))
            }
            
            Button("Login") {
                router.route(.cover(.login(value: "Login Full Screen Cover")))
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewModel: .init())
            .environmentObject(HomeRouter())
    }
}
