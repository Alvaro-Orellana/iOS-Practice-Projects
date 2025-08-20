//
//  Meet_the_Composable_ArchitectureTests.swift
//  Meet the Composable ArchitectureTests
//
//  Created by Alvaro Orellana on 20-08-25.
//

import ComposableArchitecture
import Testing
@testable import Meet_the_Composable_Architecture

@MainActor
struct CounterFeatureTests {
    
    let store = TestStore(initialState: CounterFeature.State()) {
        CounterFeature()
    }
    
    @Test
    func basics() async  {
        await store.send(.incrementButtonTapped) {
            $0.count = 1
        }
        await store.send(.decrementButtonTapped) {
            $0.count = 0
        }
    }
    
    @Test
    func timer() async {
        await store.send(.toggleTimerButtonTapped) {
            $0.isTimerRunning = true
        }
    }
}
