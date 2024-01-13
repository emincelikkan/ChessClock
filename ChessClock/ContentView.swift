//
//  ContentView.swift
//  ChessClock
//
//  Created by Emin Çelikkan on 13.01.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("It's gonna be a chess clock app, and also a playground for me to find out some of the apple features!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
