//
//  Meet_the_Composable_ArchitectureApp.swift
//  Meet the Composable Architecture
//
//  Created by Alvaro Orellana on 02-08-25.
//

import SwiftUI
import ComposableArchitecture

@main
struct Meet_the_Composable_ArchitectureApp: App {
    
    static let store = Store(initialState: CounterFeature.State()) {
        CounterFeature()
            ._printChanges()
    }
    
    var body: some Scene {
        WindowGroup {
            CounterView(store: Self.store)
        }
    }
}
