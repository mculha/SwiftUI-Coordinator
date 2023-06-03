//
//  PurchaseView.swift
//  SwiftUI-Coordinator
//
//  Created by Melih Çulha on 3.06.2023.
//

import SwiftUI

struct PurchaseView: View {
    @StateObject var viewModel: PurchaseViewModel
    
    var body: some View {
        VStack(spacing: 10) {
            Text(viewModel.value)
            
            NavigationLink("Navigate Purchase", value: HomeRoute.purchase(value: "Purchase \(Int.random(in: 0...1000))"))

            Button("Pop", action: viewModel.pop)
            
            Button("Return Root", action: viewModel.returnRoot)
            
        }
    }
    

}

struct PurchaseView_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseView(viewModel: .init(value: "Purchase - 0", path: .constant(.init())))
    }
}
