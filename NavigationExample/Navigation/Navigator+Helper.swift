//
//  Navigator+Helper.swift
//  NavigationExample
//
//  Created by Burak Kurtarır on 16.08.2024.
//

import SwiftUI

extension View {
    func withRoutes() -> some View {
        self.navigationDestination(for: Routes.self) { route in
            switch route {
            case .users:
                UsersView()
            case .userDetail(let user):
                UserDetailView(user: user)
            }
        }
    }
}
