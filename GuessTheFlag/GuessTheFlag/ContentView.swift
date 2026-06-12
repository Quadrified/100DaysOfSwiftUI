//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Omer Quadri on 29/05/2026.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		// Button
		VStack {
			Button("Button 1", action: executeDelete)
				.buttonStyle(.bordered)

			Button("Button 2", role: .destructive) {}
				.buttonStyle(.bordered)

			Button("Button 3") {}
				.buttonStyle(.borderedProminent)
				.tint(.indigo)

			Button("Button 4", role: .destructive) {}
				.buttonStyle(.borderedProminent)

			Button {
				print("Button was tapped")
			} label: {
				Text("Tap me!")
					.padding()
					.foregroundStyle(.white)
					.background(.red)
			}

			Button("Edit", systemImage: "pencil") {
				print("Button was tapped")
			}

			Button {
				print("Button was tapped")
			} label: {
				Label("Edit", systemImage: "pencil")
					.padding()
					.foregroundStyle(.white)
					.background(.red)
			}
		}

		// Image
		VStack {
			Image(decorative: "testImage")

			Image(systemName: "pencil.circle")
				.foregroundStyle(.red)
				.font(.largeTitle)

		}

	}

	func executeDelete() {
		print("Now deleting...")
	}
}

#Preview {
	ContentView()
}
