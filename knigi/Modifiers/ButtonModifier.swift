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
			backgroundColor = Color(UIColor(hex: "#FF9F1C")?.withAlphaComponent(0.6) ?? .clear)
			hasBorder = false
		case .secondary:
			backgroundColor = .clear
			hasBorder = true
		}

		return content
			.frame(maxWidth: .infinity)
			.foregroundStyle(Color(UIColor(hex: "#3A3A3A") ?? .blue))
			.frame(height: 44)
			.padding(.horizontal, 50)
			.background(backgroundColor)
			.cornerRadius(15)
			.overlay(
				hasBorder ?
				RoundedRectangle(cornerRadius: 20)
					.stroke(Color(UIColor(hex: "#FF9F1C") ?? .blue))
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
