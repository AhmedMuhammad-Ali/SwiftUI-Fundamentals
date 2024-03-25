//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Ahmed Ali on 25/03/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .white],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}
