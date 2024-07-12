//
//  ContentView.swift
//  MyTCAExample
//
//  Created by Angelos Staboulis on 22/5/23.
//

import SwiftUI
import ComposableArchitecture
struct ContentView: View {
    @Perception.Bindable var store = Store(initialState: Feature.State(count: 0)) {
      Feature()
    }
    var body: some View {
        WithPerceptionTracking {
            VStack {
                Text("Number="+String(describing:store.count))
                Button {
                    store.send(.increment)
                } label: {
                    Text("Increment Number")
                }
                Button {
                    store.send(.decrement)
                } label: {
                    Text("Decrement Number")
                }
            }.onAppear(perform: {
                store.send(.increment)
            })
            .padding()
        }
           

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
