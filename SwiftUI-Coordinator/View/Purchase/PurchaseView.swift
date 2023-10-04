//
//  PurchaseView.swift
//  SwiftUI-Coordinator
//
//  Created by Melih Çulha on 3.06.2023.
//

import SwiftUI

struct PurchaseView: View {
    @StateObject var viewModel: PurchaseViewModel
    @EnvironmentObject var router: HomeRouter
    
    var body: some View {
        VStack(spacing: 10) {
            Text(viewModel.value)
            
            Button("Navigate Purchase") {
                router.route(.push(.purchase(value: "Purchase \(Int.random(in: 0...1000))")))
            }

            Button("Pop", action: router.pop)
            
            Button("Return Root", action: router.returnRoot)
            
        }
    }
    

}

struct PurchaseView_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseView(viewModel: .init(value: "Purchase - 0"))
            .environmentObject(HomeRouter())
    }
}
