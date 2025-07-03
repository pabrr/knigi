//
//  RegistrationView.swift
//  knigi
//
//  Created by Polina Polukhina on 24.06.2025.
//

import SwiftUI

struct RegistrationView: View {

	@StateObject var viewModel: RegistrationViewModel
	@EnvironmentObject var auth: Auth

	init(email: String, password: String) {
		_viewModel = StateObject(wrappedValue: .init(email: email, password: password))
	}

    var body: some View {
		VStack(spacing: 8) {
			Spacer()

			Group {
				TextField("ваш ник", text: $viewModel.userName)
					.defaultStyle()

				TextField("имейл", text: $viewModel.email)
					.defaultStyle()
					.keyboardType(.emailAddress)

				SecureField("Пароль", text: $viewModel.password)
					.defaultStyle()

				SecureField("Повторите пароль", text: $viewModel.confirmPassword)
					.defaultStyle()
			}
			.padding(.horizontal, 50)
			
			Spacer()

			Button {
				viewModel.didTapRegister(didComplete: { isSuccess in
					if isSuccess {
						auth.login()
					} else {
					}
				})
			} label: {
				Text("Войти или зарегистрироваться")
			}
			.defaultStyle()
		}
		.padding(.vertical, 50)
    }
}

#Preview {
	RegistrationView(email: "some@gmail.com", password: "123")
}
