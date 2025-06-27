//
//  CurrentlyReadingView.swift
//  knigi
//
//  Created by Polina Polukhina on 24.06.2025.
//

import SwiftUI

struct CurrentlyReadingView: View {

	@EnvironmentObject private var router: Router
	var books: [Color] = [.blue, .yellow, .green]

    var body: some View {
		HStack(spacing: 0) {
			TabView {
				ForEach(books, id: \.self) { book in
					Rectangle()
						.fill(book.opacity(0.5))
						.frame(width: 100)
						.onTapGesture {
							router.push(
								.goToBookDetails(
									.init(bookId: "123", title: "Blah blah")
								)
							)
						}
				}
			}
			.tabViewStyle(.page)
			.frame(width: 140)

			.padding(.vertical, 8)

			Spacer()

			Button {
				// update
			} label: {
				Text("Я сегодня читала")
					.foregroundStyle(Color(UIColor.textColor))
			}
			.padding(.horizontal, 16)
			.frame(height: 44)
			.background(Color(UIColor.secondary))
			.cornerRadius(15)
			.padding(.trailing, 20)
		}
		.frame(height: 150)
		.frame(maxWidth: .infinity)
		.background(.red.opacity(0.3))
		.cornerRadius(15)
    }

}

#Preview {
    CurrentlyReadingView()
		.padding(16)
}
