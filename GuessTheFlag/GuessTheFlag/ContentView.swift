//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Omer Quadri on 29/05/2026.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		VStack {
			LinearGradient(
				stops: [
					.init(color: .white, location: 0.45),
					.init(color: .mint, location: 0.55),
				],
				startPoint: .top,
				endPoint: .bottom
			)

			RadialGradient(
				colors: [.mint, .black],
				center: .center,
				startRadius: 20,
				endRadius: 200
			)

			AngularGradient(
				colors: [
					.indigo, .blue, .green, .yellow, .orange, .red,
				],
				center: .center
			)

			Text("Your content")
				.frame(maxWidth: .infinity, maxHeight: .infinity)
				.foregroundStyle(.white)
				.background(.red.gradient)
		}
		.ignoresSafeArea()
	}
}

#Preview {
	ContentView()
}
