//
//  BookClubViewModel.swift
//  knigi
//
//  Created by Polina Polukhina on 26.06.2025.
//

import Foundation

final class BookClubViewModel: ObservableObject {

	@Published var bookClubList: [BookClubEntity] = []

	// remove
	init(bookClubList: [BookClubEntity] = []) {
		self.bookClubList = [
			.init(id: "1", title: "Книжный клуб 1", description: "", createdAt: Date(), updatedAt: Date(), ownerId: "Полина", state: .active),
			.init(id: "2", title: "Книжный клуб 1", description: "", createdAt: Date(), updatedAt: Date(), ownerId: "Настя", state: .active),
			.init(id: "3", title: "Книжный клуб 1", description: "", createdAt: Date(), updatedAt: Date(), ownerId: "Полина", state: .active),
			.init(id: "4", title: "Книжный клуб 1", description: "", createdAt: Date(), updatedAt: Date(), ownerId: "Полина", state: .active),
			.init(id: "5", title: "Книжный клуб 1", description: "", createdAt: Date(), updatedAt: Date(), ownerId: "Полина", state: .active),
		]
	}

	func viewDidAppear() {
		bookClubList = [
			.init(id: "1", title: "Книжный клуб 1", description: "", createdAt: Date(), updatedAt: Date(), ownerId: "Полина", state: .active),
			.init(id: "2", title: "Книжный клуб 1", description: "", createdAt: Date(), updatedAt: Date(), ownerId: "Настя", state: .active),
			.init(id: "3", title: "Книжный клуб 1", description: "", createdAt: Date(), updatedAt: Date(), ownerId: "Полина", state: .active),
			.init(id: "4", title: "Книжный клуб 1", description: "", createdAt: Date(), updatedAt: Date(), ownerId: "Полина", state: .active),
			.init(id: "5", title: "Книжный клуб 1", description: "", createdAt: Date(), updatedAt: Date(), ownerId: "Полина", state: .active),
		]
	}

	func createNewClub() {
		
	}

}
