//
//  BookEntity.swift
//  knigi
//
//  Created by Polina Polukhina on 24.06.2025.
//

import Foundation

struct BookEntity: Decodable {
	let id: String
	let title: String
	let author: [String]
	let annotation: String?
	let coverURL: String?
	let releasedYear: Int?
	let pages: Int?

	enum CodingKeys: String, CodingKey {
		case id = "key"
		case title
		case author = "author_name"
		case annotation
		case coverURL
		case releasedYear = "first_publish_year"
		case pages
	}
}
