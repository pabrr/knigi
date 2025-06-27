//
//  MainView.swift
//  knigi
//
//  Created by Polina Polukhina on 24.06.2025.
//

import SwiftUI

struct MainView: View {

	@StateObject private var viewModel = MainViewModel()
	@State private var showSearch = false

    var body: some View {
		ZStack(alignment: .bottomTrailing) {
			Form {
				Section {
					CurrentlyReadingView()
				}
				.listRowInsets(EdgeInsets())
				.listRowBackground(Color.clear)
				
				Section("Книжные клубы") {
					BookClubListView(viewModel: .init(bookClubList: viewModel.bookClubList))
				}
			}

			Button {
				showSearch = true
			} label: {
				Text("+")
					.font(.system(size: 50))
					.minimumScaleFactor(0.01)
					.foregroundStyle(Color(UIColor.textColor))
			}
			.frame(width: 70, height: 70)
			.background(Color(UIColor.secondary))
			.cornerRadius(40)
			.padding(.trailing, 25)
			.sheet(isPresented: $showSearch) {
				SearchView()
			}
		}
		.navigationTitle("Мои клубы")
//		.searchable(text: $viewModel.searchText)
    }
}

#Preview {
	NavigationStack {
		MainView()
	}
}
