//
//  MainViewModel.swift
//  knigi
//
//  Created by Polina Polukhina on 24.06.2025.
//

import SwiftUI

final class MainViewModel: ObservableObject {

	@Published var searchText: String = ""
	@Published var bookClubList: [BookClubEntity] = []
	var filteredBookClubList: [BookClubEntity] {
		if searchText.isEmpty {
			return bookClubList
		} else {
			return bookClubList.filter {
				return $0.title.lowercased().contains(searchText.lowercased()) ||
				$0.ownerId.lowercased().contains(searchText.lowercased()) ||
				$0.description.lowercased().contains(searchText.lowercased())
			}
		}
	}

	init(searchText: String = "", bookClubList: [BookClubEntity] = []) {
		self.searchText = searchText
		self.bookClubList = [
			.init(id: "1", title: "Книжный клуб 1", description: "", createdAt: Date(), updatedAt: Date(), ownerId: "Полина", state: .active),
			.init(id: "2", title: "Книжный клуб 1", description: "", createdAt: Date(), updatedAt: Date(), ownerId: "Настя", state: .active),
			.init(id: "3", title: "Книжный клуб 1", description: "", createdAt: Date(), updatedAt: Date(), ownerId: "Полина", state: .active),
			.init(id: "4", title: "Книжный клуб 1", description: "", createdAt: Date(), updatedAt: Date(), ownerId: "Полина", state: .active),
			.init(id: "5", title: "Книжный клуб 1", description: "", createdAt: Date(), updatedAt: Date(), ownerId: "Полина", state: .active),
		]
	}

}
