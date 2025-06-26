//
//  BookDetailsViewModel.swift
//  knigi
//
//  Created by Polina Polukhina on 25.06.2025.
//

import Foundation

final class BookDetailsViewModel: ObservableObject {

	@Published var bookId: String = ""
	let title: String

	init(bookId: String, title: String = "SomeTitle") {
		self.bookId = bookId
		self.title = title
	}

}

extension BookDetailsViewModel: Identifiable, Hashable {
	var identifier: String {
		return bookId
	}

	public func hash(into hasher: inout Hasher) {
		return hasher.combine(identifier)
	}

	public static func == (lhs: BookDetailsViewModel, rhs: BookDetailsViewModel) -> Bool {
		return lhs.identifier == rhs.identifier
	}
}
