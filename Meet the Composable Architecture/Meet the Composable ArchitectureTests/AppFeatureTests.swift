//
//  AppFeatureTests.swift
//  Meet the Composable ArchitectureTests
//
//  Created by Alvaro Orellana on 23-08-25.
//

import Testing
import ComposableArchitecture
@testable import Meet_the_Composable_Architecture

@MainActor
struct AppFeatureTests {
    @Test
    func incrementInFirstTab() async {
        let store = TestStore(initialState: AppFeature.State()) {
            AppFeature()
        }
        await store.send(\.tab1.incrementButtonTapped) {
            $0.tab1.count = 1
        }
    }

}
