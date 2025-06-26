//
//  BookClubView.swift
//  knigi
//
//  Created by Polina Polukhina on 26.06.2025.
//

import SwiftUI

struct BookClubView: View {

	@StateObject var viewModel: BookClubViewModel = .init()

	var body: some View {
		BookClubListView(viewModel: .init(bookClubList: viewModel.bookClubList))
			.onAppear {
				viewModel.viewDidAppear()
			}
			.navigationTitle("Мои клубы")
    }
}

#Preview {
	NavigationStack {
		BookClubView()
	}
}
