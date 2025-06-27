//
//  SearchView.swift
//  knigi
//
//  Created by Polina Polukhina on 25.06.2025.
//

import SwiftUI

struct SearchView: View {

	@StateObject private var viewModel = SearchViewModel()

	@Environment(\.dismiss) private var dismiss

    var body: some View {
		NavigationStack {
			ScrollView {
				LazyVStack {
					ForEach(viewModel.results, id: \.self) { result in
						Text(result)
					}
				}
				.searchable(text: $viewModel.searchText)
			}
			.navigationTitle("Искать книгу/клуб/человека")
			.navigationBarTitleDisplayMode(.inline)
			.navigationBarItems(leading: Button(action: {
				dismiss()
			}) {
				Image(systemName: "xmark")
					.resizable()
					.padding(6)
					.frame(width: 30, height: 30)
					.foregroundStyle(Color(UIColor.textColor))
			})
		}
    }
	
}

#Preview {
	SearchView()
}
