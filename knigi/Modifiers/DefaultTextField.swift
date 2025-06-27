//
//  DefaultTextField.swift
//  knigi
//
//  Created by Polina Polukhina on 26.06.2025.
//

import SwiftUI

struct DefaultTextField: ViewModifier {

	func body(content: Content) -> some View {
		return content
			.frame(height: 44)
			.padding(.vertical, 5)
			.padding(.horizontal, 15)
			.overlay(
				RoundedRectangle(cornerRadius: 20)
					.stroke(Color(UIColor.primaryVibrant))
			)
	}

}

extension TextField {

	func defaultStyle() -> some View {
		modifier(DefaultTextField())
	}

}

extension SecureField {

	func defaultStyle() -> some View {
		modifier(DefaultTextField())
	}

}

#Preview {

	@Previewable @State var text: String = ""

	TextField(text: $text, label: { Text("Placeholder") })
		.defaultStyle()

}
