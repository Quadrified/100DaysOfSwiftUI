//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Omer Quadri on 29/05/2026.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		ZStack {
			// Color can be treated as its own View
			Color.secondary
				.frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
			Color(red: 1, green: 0.8, blue: 0)
				.frame(minWidth: 200, minHeight: 200)

			Text("Your Content")
		}
		.ignoresSafeArea()  // draws under dynamic island and status bar

		// Vibrancy
		ZStack {
			VStack(spacing: 0) {
				Color.red
				Color.blue
			}

			Text("Hello, World!")
				.foregroundStyle(.secondary)
				.padding(50)
				.background(.ultraThinMaterial)
				.clipShape(.circle)
		}
		.ignoresSafeArea()
	}
}

#Preview {
	ContentView()
}
