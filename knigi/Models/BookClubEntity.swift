//
//  BookClubEntity.swift
//  knigi
//
//  Created by Polina Polukhina on 26.06.2025.
//

import Foundation

enum BookClubState {
	case active
	case finished
	case frozen
}

struct BookClubEntity {
	let id: String
	let title: String
	let description: String
	let createdAt: Date
	let updatedAt: Date
	let ownerId: String
	let state: BookClubState
}
