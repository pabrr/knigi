//
//  MainTabView.swift
//  knigi
//
//  Created by Polina Polukhina on 24.06.2025.
//

import SwiftUI

struct MainTabView: View {

	enum Tabs: CaseIterable, Identifiable {

		var id: Self { self }

		case main
		case clubs
		case books
		case profile
	}

    var body: some View {
		TabView {
			ForEach(Tabs.allCases) { tab in
				switch tab {
				case .main:
					MainView()
						.tabItem {
							Label("Main", systemImage: "1.circle")
						}
				case .clubs:
					BookClubView()
						.tabItem {
							Label("Clubs", systemImage: "2.circle")
						}

				case .books:
					Text("books")
						.tabItem {
							Label("Books", systemImage: "3.circle")
						}

				case .profile:
					ProfileView()
						.tabItem {
							Label("Profile", systemImage: "4.circle")
						}
				}
			}
		}
    }
}

#Preview {
    MainTabView()
}
