//
//  LoginView.swift
//  knigi
//
//  Created by Polina Polukhina on 24.06.2025.
//

import SwiftUI

struct LoginView: View {

	@StateObject private var viewModel: LoginViewModel = .init()

	@Binding var state: InitialViewModel.InitialState
	@State var presentStartRegistration: Bool = false

	@State private var showingSheet = false


    var body: some View {
		NavigationView {
			VStack {
				Image("logoForLogin")
					.resizable()
					.aspectRatio(contentMode: .fit)
					.padding(.horizontal, 50)
				
				VStack(spacing: 8) {
					Group {
						TextField("имейл", text: $viewModel.email)
							.defaultStyle()
							.keyboardType(.emailAddress)

						SecureField("Пароль", text: $viewModel.password)
							.defaultStyle()
					}
					.padding(.horizontal, 50)
					
					Spacer()
					
					Button {
						viewModel.didTapLogin(didFinishLogin: { isSuccess in
							if isSuccess {
								state = .loggedIn
							} else {
								presentStartRegistration = true
							}
						})
					} label: {
						Text("Войти или зарегистрироваться")
					}
					.defaultStyle()
				}
				.padding(.vertical, 50)
				.alert("Пользователь не найден", isPresented: $presentStartRegistration) {
					Button("Отмена", role: .cancel) { }
					
					Button("Продолжить") {
						showingSheet.toggle()
					}
				} message: {
					Text("Желаете начать регистрацию?")
				}
			}
		}
		.sheet(isPresented: $showingSheet) {
			RegistrationView(email: viewModel.email, password: viewModel.password, state: $state)
		}
    }

}

#Preview {
	LoginView(state: Binding<InitialViewModel.InitialState>.constant(.notAuthorized))
}
