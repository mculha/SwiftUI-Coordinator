//
//  ProfileView.swift
//  SwiftUI-Coordinator
//
//  Created by Melih Çulha on 4.06.2023.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel: ProfileViewModel
    @EnvironmentObject var router: ProfileRouter
    
    var body: some View {
        
        VStack(spacing: 10) {
            Text(viewModel.value)
            
            Button("Contact") {
                router.route(.push(.contact(value: "Contact")))
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(viewModel: .init(value: "Profile Preview"))
    }
}
