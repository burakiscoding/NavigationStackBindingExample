//
//  UsersView.swift
//  NavigationExample
//
//  Created by Burak Kurtarır on 16.08.2024.
//

import SwiftUI

struct UsersView: View {
    @State private var users: [User] = [
        User(firstName: "Sherlock", lastName: "Holmes"),
        User(firstName: "John", lastName: "Watson"),
        User(firstName: "James", lastName: "Moriarty"),
        User(firstName: "Irene", lastName: "Adler")
    ]
    
    var body: some View {
        List($users) { $user in
            NavigationLink(user.fullName, value: Routes.userDetail(user: $user))
        }
        .navigationTitle("Users")
    }
}

#Preview {
    NavigationStack {
        UsersView()
    }
}
