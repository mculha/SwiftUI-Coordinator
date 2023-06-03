//
//  HomeView.swift
//  SwiftUI-Coordinator
//
//  Created by Melih Çulha on 3.06.2023.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack {
            NavigationLink("Navigate Purchase", value: HomeRouter.Screen.purchase(value: "Purchase \(Int.random(in: 0...1000))"))
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewModel: .init(path: .constant(.init())))
    }
}
