//
//  Router.swift
//  knigi
//
//  Created by Polina Polukhina on 25.06.2025.
//

import SwiftUI

enum Route: Hashable {
	case goToBookDetails(BookDetailsViewModel)
	case goToBookClubDetails(BookDetailsViewModel)
}

@MainActor
final class Router: ObservableObject {

	@Published var path = NavigationPath()

	@ViewBuilder
	func view(for route: Route) -> some View {
		switch route {
		case .goToBookDetails(let viewModel):
			BookDetailsView(viewModel: viewModel)
		case .goToBookClubDetails(let viewModel):
			BookDetailsView(viewModel: viewModel)
		}
	}

	func push(_ appRoute: Route) {
		path.append(appRoute)
	}

	func pop() {
		guard !path.isEmpty else {
			return
		}
		path.removeLast()
	}

	func popToRoot() {
		path.removeLast(path.count)
	}

}
