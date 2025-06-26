//
//  MainViewModel.swift
//  knigi
//
//  Created by Polina Polukhina on 24.06.2025.
//

import SwiftUI

final class MainViewModel: ObservableObject {

	@Published var searchText: String = ""

	let some: [String] = Array(0...1000).map { String($0) }
	var someFiltered: [String] {
		if searchText.isEmpty {
			return some
		} else {
			return some.filter { $0.contains(searchText) }
		}
	}

}
