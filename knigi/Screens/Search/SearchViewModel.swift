//
//  SearchViewModel.swift
//  knigi
//
//  Created by Polina Polukhina on 25.06.2025.
//

import Foundation
import Combine

final class SearchViewModel: ObservableObject {

	@Published var searchText: String
	@Published var results: [String]

	private var subscribers = Set<AnyCancellable>()
	private var searchQuery: AnyCancellable?

	private let service = BooksService()

	init(searchText: String = "", results: [String] = ["Several", "Default", "Options"]) {
		self.searchText = searchText
		self.results = results

		$searchText
			.sink { newSearch in
				self.startSearch(with: newSearch)
			}
			.store(in: &subscribers)
	}

	func startSearch(with newSearch: String) {
		guard !newSearch.isEmpty,
			  newSearch != searchText else {
			return
		}

		searchQuery?.cancel()

		searchQuery = service.searchBooks(by: newSearch)
			.mapError({ error in
				print(error)

				return error
			})
			.sink(receiveCompletion: { _ in }, receiveValue: { books in
				self.results = books.docs.compactMap { $0.title }
			})
	}

}

struct Message: Identifiable, Codable {
	let id: Int
	var user: String
	var text: String
}
