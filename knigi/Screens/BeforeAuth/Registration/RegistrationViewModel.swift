//
//  RegistrationViewModel.swift
//  knigi
//
//  Created by Polina Polukhina on 24.06.2025.
//

import Foundation

final class RegistrationViewModel: ObservableObject {

	@Published var email: String = ""
	@Published var password: String = ""
	@Published var confirmPassword: String = ""
	@Published var userName: String = ""

	init(email: String, password: String) {
		self.email = email
		self.password = password
	}

	func didTapRegister(didComplete: @escaping ((Bool) -> Void)) {
		if !email.isEmpty,
		   !password.isEmpty,
		   password == confirmPassword,
		   !userName.isEmpty
		{
			register(didComplete: didComplete)
		} else {
			didComplete(false)
		}
	}

	func register(didComplete: @escaping ((Bool) -> Void)) {
		didComplete(true)
	}

}
