//
//  ProfileView.swift
//  knigi
//
//  Created by Polina Polukhina on 26.06.2025.
//

import SwiftUI

struct ProfileView: View {

	@StateObject var viewModel: ProfileViewModel = .init()

    var body: some View {
		NavigationStack {
			VStack(spacing: 0) {
				Image(systemName: "person.crop.circle.fill")
					.resizable()
					.aspectRatio(contentMode: .fill)
					.frame(width: 100, height: 100)
					.foregroundStyle(Color(.red.withAlphaComponent(0.5)))
					.onTapGesture {
						viewModel.updateAvatar()
					}
				
				Spacer()
					.frame(height: 50)
				
				VStack(spacing: 10) {
					Button {
						viewModel.changePassword()
					} label: {
						Text("Изменить пароль")
					}
					.defaultStyle(.secondary)
					
					Button {
						viewModel.logOut()
					} label: {
						Text("Выйти")
					}
					.defaultStyle(.secondary)
				}
				.padding(.horizontal, 50)
			}
		}
    }

}

#Preview {
    ProfileView()
}
