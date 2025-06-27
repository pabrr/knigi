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
		ZStack(alignment: .bottomTrailing) {
			BookClubListView(viewModel: .init(bookClubList: viewModel.bookClubList))
				.onAppear {
					viewModel.viewDidAppear()
				}

			Button {
				viewModel.createNewClub()
			} label: {
				Text("Создать новый клуб")
			}
			.defaultStyle()
			.padding(.trailing, 20)
			.padding(.leading, 120)
		}
		.navigationTitle("Мои клубы")
    }
}

#Preview {
	NavigationStack {
		BookClubsView()
	}
}
