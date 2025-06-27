//
//  ButtonModifier.swift
//  knigi
//
//  Created by Polina Polukhina on 26.06.2025.
//

import SwiftUI

struct DefaultButton: ViewModifier {

	enum Style {
		case primary
		case secondary
	}

	private let style: Style

	init(style: Style) {
		self.style = style
	}

	func body(content: Content) -> some View {
		let backgroundColor: Color
		let hasBorder: Bool

		switch style {
		case .primary:
			backgroundColor = Color(UIColor.primary)
			hasBorder = false
		case .secondary:
			backgroundColor = .clear
			hasBorder = true
		}

		return content
			.frame(maxWidth: .infinity)
			.foregroundStyle(Color(UIColor.textColor))
			.frame(height: 44)
			.padding(.horizontal, 50)
			.background(backgroundColor)
			.cornerRadius(15)
			.overlay(
				hasBorder ?
				RoundedRectangle(cornerRadius: 20)
					.stroke(Color(UIColor.primaryVibrant))
				:
					nil
			)
	}

}

extension Button {

	func defaultStyle(_ style: DefaultButton.Style = .primary) -> some View {
		modifier(DefaultButton(style: style))
	}

}

#Preview {
	VStack(spacing: 20) {
		Button(action: { }, label: { Text("Продолжить") })
			.defaultStyle(.primary)

		Button(action: { }, label: { Text("Продолжить") })
			.defaultStyle(.secondary)

		Button(action: { }, label: { Text("Выйти") })
			.defaultStyle(.secondary)
	}
}
