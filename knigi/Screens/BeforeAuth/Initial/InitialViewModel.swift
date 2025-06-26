//
//  InitialViewModel.swift
//  knigi
//
//  Created by Polina Polukhina on 25.06.2025.
//

import Foundation

final class InitialViewModel: ObservableObject {

	enum InitialState {
		case notAuthorized
		case loggedIn
	}

	@Published var state: InitialState = .notAuthorized

	func viewDidAppear() {
		// get token

		if true {
			state = .loggedIn
		} else {
			state = .notAuthorized
		}
	}

}
