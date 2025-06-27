//
//  BookClubItemView.swift
//  knigi
//
//  Created by Polina Polukhina on 26.06.2025.
//

import SwiftUI

struct BookClubItemView: View {

	@EnvironmentObject private var router: Router
	@Binding var item: BookClubEntity

    var body: some View {
		HStack(spacing: 12) {
//			Image()
			Rectangle()
				.fill(Color.green.opacity(0.4))
				.frame(width: 100, height: 130) // ratio ?

			VStack(alignment: .leading, spacing: 8) {
				Text($item.wrappedValue.title)
					.defaultStyle(.primaryBold)
					.fixedSize(horizontal: false, vertical: true)

				HStack {
					Text("Владелец: \($item.wrappedValue.ownerId)")
						.defaultStyle()
				}

				Spacer()

				Text("Читателей: 13")
					.defaultStyle()
				Text("Последнее обновление: 25.06.2025")
					.defaultStyle(.secondary)
					.fixedSize(horizontal: false, vertical: true)
			}

			Spacer()
		}
		.frame(height: 130)
		.onTapGesture {
			router.push(.goToBookClubDetails(.init(bookId: "123")))
		}
    }
}

#Preview {
	BookClubItemView(item: Binding<BookClubEntity>.constant(.init(
		id: "",
		title: "Мой личный книжный клуб",
		description: "",
		createdAt: Date(),
		updatedAt: Date(),
		ownerId: "Полина",
		state: .active
	)))
}
