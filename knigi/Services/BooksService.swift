//
//  BooksService.swift
//  knigi
//
//  Created by Polina Polukhina on 25.06.2025.
//

import Alamofire
import Combine

struct SearchResult: Decodable {
	let numFound: Int
	let docs: [BookEntity]
}

final class BooksService {

	private let url = "https://openlibrary.org/"

	func searchBooks(by text: String) -> AnyPublisher<SearchResult, AFError> {
		let publisher = AF.request(url + "search.json?q=\(text)").publishDecodable(type: SearchResult.self)

		return publisher.value()
	}

}
