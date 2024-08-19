//
//  User.swift
//  NavigationExample
//
//  Created by Burak Kurtarır on 16.08.2024.
//

import Foundation

struct User: Hashable, Identifiable {
    let id: UUID
    var firstName: String
    var lastName: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    init(firstName: String, lastName: String) {
        self.id = UUID()
        self.firstName = firstName
        self.lastName = lastName
    }
    
    static func example() -> User {
        return User(firstName: "John", lastName: "Doe")
    }
}
