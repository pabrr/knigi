//
//  BookClubsView.swift
//  knigi
//
//  Created by Polina Polukhina on 26.06.2025.
//

import SwiftUI

struct BookClubsView: View {

	@StateObject var viewModel: BookClubViewModel = .init()

	var body: some View {
		NavigationStack {
			ZStack(alignment: .bottomTrailing) {
				BookClubListView(bookClubList: $viewModel.bookClubList)
					.onAppear {
						viewModel.viewDidAppear()
					}
					.padding(.horizontal, 24)

				Button {
					viewModel.createNewClub()
				} label: {
					Text("Создать новый клуб")
				}
				.defaultStyle()
				.padding([.trailing, .bottom], 20)
				.padding(.leading, 100)
			}
			.navigationTitle("Мои клубы")
		}
    }
}

#Preview {
	NavigationStack {
		BookClubsView()
	}
}
