//
//  FirstAppearModifier.swift
//  knigi
//
//  Created by Polina Polukhina on 27.06.2025.
//

import SwiftUI

struct FirstAppearModifier: ViewModifier {

	let action: () -> ()

	@State private var hasAppeared = false

	func body(content: Content) -> some View {
		content.onAppear {
			guard !hasAppeared else {
				return
			}

			hasAppeared = true
			action()
		}
	}

}

extension View {

	func onFirstAppear(_ action: @escaping () -> ()) -> some View {
		modifier(FirstAppearModifier(action: action))
	}

}
