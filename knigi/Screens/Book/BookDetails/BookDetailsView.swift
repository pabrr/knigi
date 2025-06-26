//
//  BookDetailsView.swift
//  knigi
//
//  Created by Polina Polukhina on 25.06.2025.
//

import SwiftUI

struct BookDetailsView: View {

	@StateObject var viewModel: BookDetailsViewModel

    var body: some View {

		Text(viewModel.title)
			.navigationTitle("Моя книга")
    }

}

#Preview {
	BookDetailsView(viewModel: .init(bookId: "123"))
}
