//
//  NewsView.swift
//  SwiftUI-Coordinator
//
//  Created by Melih Çulha on 4.06.2023.
//

import SwiftUI

struct NewsView: View {
    
    @StateObject var viewModel: NewsViewModel
    @EnvironmentObject var router: NewsRouter
    
    var body: some View {
        VStack(spacing: 10) {
            NavigationLink("Notifications", value: NewsRouter.Screen.notification)
            
            Button("Notification Modally") {
                router.route(.sheet(.notification))
            }
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView(viewModel: .init())
            .environmentObject(NewsRouter())
    }
}
