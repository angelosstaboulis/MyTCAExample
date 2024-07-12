//
//  Feature.swift
//  MyTCAExample
//
//  Created by Angelos Staboulis on 22/5/23.
//

import Foundation
import ComposableArchitecture
struct Feature:Reducer{
    @ObservableState
    struct State:Equatable{
        var count:Int
    }
    enum Action:Equatable{
        case increment
        case decrement
    }
    func reduce(into state: inout State, action: Action) -> Effect<Action> {
        switch action{
        case .increment:
            state.count = state.count + 1
            return .none
        case .decrement:
            state.count = state.count - 1
            return .none
        }
    }
    
    
    
}
