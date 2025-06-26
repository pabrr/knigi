//
//  BookClubListView.swift
//  knigi
//
//  Created by Polina Polukhina on 26.06.2025.
//

import SwiftUI

struct BookClubListView: View {

	@StateObject var viewModel: BookClubListViewModel

    var body: some View {
		ScrollView {
			LazyVStack(spacing: 16) {
				ForEach(viewModel.bookClubList, id: \.id) { bookClub in
					BookClubItemView(viewModel: .init(item: bookClub))
				}
			}
		}
    }
}

#Preview {
	BookClubListView(viewModel: .init(bookClubList: [
		.init(id: "1", title: "Книжный клуб 1", description: "", createdAt: Date(), updatedAt: Date(), ownerId: "Полина", state: .active),
		.init(id: "2", title: "Книжный клуб 1", description: "", createdAt: Date(), updatedAt: Date(), ownerId: "Настя", state: .active),
//		.init(id: "3", title: "Книжный клуб 1", description: "", createdAt: Date(), updatedAt: Date(), ownerId: "Полина", state: .active),
//		.init(id: "4", title: "Книжный клуб 1", description: "", createdAt: Date(), updatedAt: Date(), ownerId: "Полина", state: .active),
//		.init(id: "5", title: "Книжный клуб 1", description: "", createdAt: Date(), updatedAt: Date(), ownerId: "Полина", state: .active),
	]))
}
