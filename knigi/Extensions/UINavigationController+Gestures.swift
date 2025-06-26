//
//  UINavigationController+Gestures.swift
//  knigi
//
//  Created by Polina Polukhina on 25.06.2025.
//

import UIKit

extension UINavigationController {

	override open func viewDidLoad() {
		super.viewDidLoad()
		interactivePopGestureRecognizer?.delegate = nil
	}

}
