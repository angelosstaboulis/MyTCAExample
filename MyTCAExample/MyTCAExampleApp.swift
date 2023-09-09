//
//  MyTCAExampleApp.swift
//  MyTCAExample
//
//  Created by Angelos Staboulis on 22/5/23.
//

import SwiftUI

@main
struct MyTCAExampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(store: .init(initialState: Feature.State(count: 0), reducer: Feature()))
        }
    }
}
