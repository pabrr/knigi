//
//  InitialView.swift
//  knigi
//
//  Created by Polina Polukhina on 24.06.2025.
//

import SwiftUI

struct InitialView: View {

	@StateObject var viewModel: InitialViewModel = .init()

	var body: some View {
		RouterView {
			switch viewModel.state {
			case .notAuthorized:
				LoginView(state: $viewModel.state)
			case .loggedIn:
				MainTabView()
			}
		}
		.onAppear {
			viewModel.viewDidAppear()
		}
    }
}

#Preview {
	InitialView()
}
