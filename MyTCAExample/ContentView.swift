//
//  ContentView.swift
//  MyTCAExample
//
//  Created by Angelos Staboulis on 22/5/23.
//

import SwiftUI
import ComposableArchitecture
struct ContentView: View {
    let store:StoreOf<Feature>
    var body: some View {
        WithViewStore(store) { viewStore in
            VStack {
                Text("Number="+String(describing:viewStore.count))
                Button {
                    viewStore.send(.increment)
                } label: {
                    Text("Increment Number")
                }
                Button {
                    viewStore.send(.decrement)
                } label: {
                    Text("Decrement Number")
                }
            }
            .padding()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: .init(initialState: Feature.State(count: 0), reducer: Feature()))
    }
}
