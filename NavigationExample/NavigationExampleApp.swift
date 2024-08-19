//
//  NavigationExampleApp.swift
//  NavigationExample
//
//  Created by Burak Kurtarır on 16.08.2024.
//

import SwiftUI

@main
struct NavigationExampleApp: App {
    @State private var navigator: Navigator = Navigator()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $navigator.path) {
                UsersView()
                    .withRoutes()
                    .environment(\.navigator, navigator)
            }
        }
    }
}
