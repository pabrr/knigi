//
//  LoginViewModel.swift
//  knigi
//
//  Created by Polina Polukhina on 24.06.2025.
//

import Foundation

final class LoginViewModel: ObservableObject {

	@Published var email = ""
	@Published var password = ""

	func didTapLogin(didFinishLogin: ((Bool) -> Void)) {
		// try to auth

		if true {
			didFinishLogin(true)
		} else {
			didFinishLogin(false)
		}
	}

}
