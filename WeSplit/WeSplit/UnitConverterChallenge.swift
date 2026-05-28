//
//  UnitConverterChallenge.swift
//
//  Created by Omer Quadri on 27/05/2026.
//

import SwiftUI

struct UnitConverterChallenge: View {
	@State private var userInput = 0.0
	@State private var inputUnit = "second"
	@State private var targetUnit = "minute"

	let conversionUnits = ["second", "minute", "hour", "day"]

	var result: Double {
		let inputInSeconds: Double

		switch inputUnit {
		case "second":
			inputInSeconds = userInput
		case "minute":
			inputInSeconds = userInput * 60
		case "hour":
			inputInSeconds = userInput * 3600
		case "day":
			inputInSeconds = userInput * 86400
		default:
			inputInSeconds = userInput
		}

		switch targetUnit {
		case "second":
			return inputInSeconds
		case "minute":
			return (inputInSeconds / 60)
		case "hour":
			return inputInSeconds / 3600
		case "day":
			return inputInSeconds / 86400
		default:
			return inputInSeconds
		}
	}

	var body: some View {
		NavigationStack {
			Form {
				Section("Select input unit") {
					Picker("Select input unit", selection: $inputUnit) {
						ForEach(conversionUnits, id: \.self) {
							Text($0)
						}
					}
					.pickerStyle(.segmented)
				}

				Section("Select target unit") {
					Picker("Select target unit", selection: $targetUnit) {
						ForEach(conversionUnits, id: \.self) {
							Text($0)
						}
					}
					.pickerStyle(.segmented)
				}

				TextField(
					"Enter value",
					value: $userInput,
					format: .number
				)
				.keyboardType(.decimalPad)

				Section("Result") {
					Text(result.formatted())
				}
			}
			.navigationTitle("Time Converter")
		}
	}
}

#Preview {
	UnitConverterChallenge()
}
