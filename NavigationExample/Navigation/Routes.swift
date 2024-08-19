//
//  Routes.swift
//  NavigationExample
//
//  Created by Burak Kurtarır on 16.08.2024.
//

import SwiftUI

enum Routes: Hashable {
    case users
    case userDetail(user: Binding<User>)
    
    func hash(into hasher: inout Hasher) {
        switch self {
        case .userDetail(let user):
            hasher.combine(user.wrappedValue)
        default:
            hasher.combine(self)
        }
    }
    
    static func == (lhs: Routes, rhs: Routes) -> Bool {
        lhs.hashValue == rhs.hashValue
    }
}
