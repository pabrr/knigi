//
//  TextModifier.swift
//  knigi
//
//  Created by Polina Polukhina on 26.06.2025.
//

import SwiftUI

struct TextModifier: ViewModifier {

	enum Style {
		case title
		case subtitle
		case primaryBold
		case primary
		case secondary
	}

	private let style: Style

	init(style: Style) {
		self.style = style
	}

	func body(content: Content) -> some View {
		let fontSize: CGFloat
		let fontWeight: Font.Weight

		switch style {
		case .title:
			fontSize = 24
			fontWeight = .bold
		case .subtitle:
			fontSize = 20
			fontWeight = .medium
		case .primaryBold:
			fontSize = 16
			fontWeight = .bold
		case .primary:
			fontSize = 16
			fontWeight = .regular
		case .secondary:
			fontSize = 14
			fontWeight = .light
		}

		return content
			.font(.system(size: fontSize, weight: fontWeight, design: .rounded))
			.foregroundStyle(Color(UIColor.textColor))
	}

}

extension Text {

	func defaultStyle(_ style: TextModifier.Style = .primary) -> some View {
		modifier(TextModifier(style: style))
	}

}

#Preview {

	VStack(spacing: 20) {
		Text("Заголовок")
			.defaultStyle(.title)

		Text("Подзаголовок")
			.defaultStyle(.subtitle)

		Text("Основной-Bold")
			.defaultStyle(.primaryBold)

		Text("Основной")
			.defaultStyle(.primary)

		Text("Секондари")
			.defaultStyle(.secondary)
	}

}
