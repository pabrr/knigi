//
//  RouterView.swift
//  knigi
//
//  Created by Polina Polukhina on 25.06.2025.
//

import SwiftUI

struct RouterView<Content: View>: View {

	@StateObject private var router = Router()
	private let content: Content

	@inlinable
	init(@ViewBuilder content: @escaping () -> Content) {
		self.content = content()
	}

	var body: some View {
		NavigationStack(path: $router.path) {
			content
				.navigationDestination(for: Route.self) {
					router.view(for: $0)
				}
		}
		.environmentObject(router)
	}
}
