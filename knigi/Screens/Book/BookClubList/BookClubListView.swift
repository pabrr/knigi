//
//  BookClubListView.swift
//  knigi
//
//  Created by Polina Polukhina on 26.06.2025.
//

import SwiftUI

struct BookClubListView: View {

	@Binding var bookClubList: [BookClubEntity]

    var body: some View {
		ScrollView {
			LazyVStack(spacing: 16) {
				ForEach($bookClubList, id: \.id) { bookClub in
					BookClubItemView(item: bookClub)
				}
			}
		}
    }
}

#Preview {
	BookClubListView(bookClubList: Binding<[BookClubEntity]>.constant([
		.init(id: "1", title: "Книжный клуб 1", description: "", createdAt: Date(), updatedAt: Date(), ownerId: "Полина", state: .active),
		.init(id: "2", title: "Книжный клуб 1", description: "", createdAt: Date(), updatedAt: Date(), ownerId: "Настя", state: .active),
	]))
}
