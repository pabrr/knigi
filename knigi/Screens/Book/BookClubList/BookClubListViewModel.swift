//
//  BookClubListViewModel.swift
//  knigi
//
//  Created by Polina Polukhina on 26.06.2025.
//

import Foundation

final class BookClubListViewModel: ObservableObject {

	@Published var bookClubList: [BookClubEntity] = []

	init(bookClubList: [BookClubEntity]) {
		self.bookClubList = bookClubList
	}

}
