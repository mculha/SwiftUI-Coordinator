//
//  ContactView.swift
//  SwiftUI-Coordinator
//
//  Created by Melih Çulha on 4.06.2023.
//

import SwiftUI

struct ContactView: View {
    @StateObject var viewModel: ContactViewModel
    
    var body: some View {
        Text(viewModel.value)
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView(viewModel: .init(value: "Contact"))
    }
}
