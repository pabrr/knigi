//
//  Auth.swift
//  knigi
//
//  Created by Polina Polukhina on 03.07.2025.
//

import SwiftUI

final class Auth: ObservableObject {

	enum AuthState {
		case notAuthorized
		case loggedIn
	}

	static let shared: Auth = Auth()

	@Published private(set) var state: AuthState = .notAuthorized

	init() {
		state = .loggedIn
	}

	// MARK: - Private Methods

	private func hasAccessToken() -> Bool {
		return false
	}

	func login() {
		state = .loggedIn
	}

	func logout() {
		state = .notAuthorized
	}

}
