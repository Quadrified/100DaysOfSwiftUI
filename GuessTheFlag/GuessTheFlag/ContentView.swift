//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Omer Quadri on 29/05/2026.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		VStack(alignment: .center) {
			Spacer()

			Text("Hello World")
			Text("Another text view")
			Text("Another another text view")

			Spacer()

		}

		HStack(spacing: 20) {
			Text("Hello World")
			Text("Another text view")
		}

		// Draws things top to bottom
		ZStack(alignment: .top) {
			// Gets drawn first
			Text("Hello World")
			// Gets drawn next
			Text("Another text view")
		}
	}
}

#Preview {
	ContentView()
}
