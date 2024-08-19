//
//  UserDetailView.swift
//  NavigationExample
//
//  Created by Burak Kurtarır on 16.08.2024.
//

import SwiftUI

struct UserDetailView: View {
    @Binding var user: User
    
    var body: some View {
        Form {
            TextField("First Name", text: $user.firstName)
            TextField("Last Name", text: $user.lastName)
        }
        .navigationTitle("User Detail")
    }
}

#Preview {
    NavigationStack {
        UserDetailView(user: .constant(User.example()))
    }
}
