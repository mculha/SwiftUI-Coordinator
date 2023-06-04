//
//  ContentView.swift
//  SwiftUI-Coordinator
//
//  Created by Melih Çulha on 3.06.2023.
//

import SwiftUI

enum TabType: Hashable {
    case home
    case profile
    case news
}

struct ContentView: View {
    
    @State var selection: TabType = .home
    
    var body: some View {
        TabView(selection: $selection) {
            HomeCoordinator()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(TabType.home)
            
            ProfileCoordinator()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
                .tag(TabType.profile)
            
            NewsCoordinator()
                .tabItem {
                    Label("News", systemImage: "newspaper.fill")
                }
                .tag(TabType.news)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
