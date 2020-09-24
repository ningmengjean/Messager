//
//  ConversationsViewController.swift
//  Messager
//
//  Created by addictedtoelixir on 2020/9/15.
//  Copyright © 2020 wangchi. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase

class ConversationsViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .red
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		validateAuth()
	}
	
	private func validateAuth() {
		if FirebaseAuth.Auth.auth().currentUser == nil {
			let vc = LoginViewController()
			let nav = UINavigationController(rootViewController: vc)
			nav.modalPresentationStyle = .fullScreen
			present(nav, animated: true)
		}
	}
}

