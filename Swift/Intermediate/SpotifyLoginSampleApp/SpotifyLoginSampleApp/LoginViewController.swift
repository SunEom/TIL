//
//  LoginViewController.swift
//  SpotifyLoginSampleApp
//
//  Created by 엄태양 on 2022/02/11.
//

import UIKit
import GoogleSignIn
import Firebase

class LoginViewController: UIViewController {
	@IBOutlet weak var emailLoginButton: UIButton!
	@IBOutlet weak var googleLoginButton: GIDSignInButton!
	@IBOutlet weak var appleLoginButton: UIButton!
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		// Navigation bar 숨기기
		self.navigationController?.navigationBar.isHidden = true
		
		//Google Sign In
		
	}
	
	override func viewDidLoad() {
			super.viewDidLoad()
		
		[emailLoginButton, googleLoginButton, appleLoginButton].forEach {
			$0?.layer.borderWidth = 1
			$0?.layer.borderColor = UIColor.white.cgColor
			$0?.layer.cornerRadius = 30
		}
	}
	
	private func showMainViewController() {
		let storyboard = UIStoryboard(name: "Main", bundle: .main)
		let mainViewController = storyboard.instantiateViewController(withIdentifier: "MainViewController")
		mainViewController.modalPresentationStyle = .fullScreen
		UIApplication.shared.windows.first?.rootViewController?.show(mainViewController, sender: nil)
	}
	
	@IBAction func googleLoginButtonTapped(_ sender: Any) {
		guard let clientID = FirebaseApp.app()?.options.clientID else { return }
		let config = GIDConfiguration(clientID: clientID)
		GIDSignIn.sharedInstance.signIn(with: config, presenting: self) { [unowned self] user, error in
			
			if let error = error {
				print("ERROR: Google Login error \(error)")
				return
			}
			
			guard let authentication = user?.authentication, let idToken = authentication.idToken else { return }
			
			let credential = GoogleAuthProvider.credential(withIDToken: idToken, accessToken: authentication.accessToken)
			
			Auth.auth().signIn(with: credential) { _, _ in
				self.showMainViewController()
			}
			
		}
	}
	@IBAction func appleLoginButtonTapped(_ sender: Any) {
		//Firebase 인증
	}
}

