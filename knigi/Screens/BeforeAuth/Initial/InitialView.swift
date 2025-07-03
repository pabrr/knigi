//
//  InitialView.swift
//  knigi
//
//  Created by Polina Polukhina on 24.06.2025.
//

import SwiftUI

struct InitialView: View {

	@EnvironmentObject var auth: Auth

	var body: some View {
		VStack {
			switch auth.state {
			case .notAuthorized:
				LoginView()
			case .loggedIn:
				MainTabView()
			}
		}
    }
}

#Preview {
	InitialView()
}
