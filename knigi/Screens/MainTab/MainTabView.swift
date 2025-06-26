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

				case .profile:
					ProfileView()
						.tabItem {
							Label("Profile", systemImage: "2.circle")
						}
				}
			}
		}
    }
}

#Preview {
    MainTabView()
}
