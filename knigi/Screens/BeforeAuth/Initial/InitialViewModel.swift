//
//  InitialViewModel.swift
//  knigi
//
//  Created by Polina Polukhina on 25.06.2025.
//

import SwiftUI

final class InitialViewModel: ObservableObject {

	enum InitialState {
		case notAuthorized
		case loggedIn
	}

	var wasSet = true

	@Published var state: InitialState = .notAuthorized

	func viewDidAppear() {
		// get token

		if wasSet {
			state = .loggedIn
			wasSet = false
		} else {
			state = .notAuthorized
		}
	}

}
