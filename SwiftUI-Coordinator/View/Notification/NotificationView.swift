//
//  NotificationView.swift
//  SwiftUI-Coordinator
//
//  Created by Melih Çulha on 4.06.2023.
//

import SwiftUI

struct NotificationView: View {
    @StateObject var viewModel: NotificationViewModel
    
    var body: some View {
        Text("Notifications")
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView(viewModel: .init())
    }
}
