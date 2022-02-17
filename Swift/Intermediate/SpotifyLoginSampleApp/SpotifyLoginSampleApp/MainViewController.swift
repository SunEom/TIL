//
//  MainViewController.swift
//  SpotifyLoginSampleApp
//
//  Created by 엄태양 on 2022/02/11.
//

import UIKit
import FirebaseAuth

class MainViewController: UIViewController {
	@IBOutlet weak var welcomeLabel: UILabel!
	@IBOutlet weak var resetPasswordButton: UIButton!
	
    override func viewDidLoad() {
        super.viewDidLoad()
			
			navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		navigationController?.navigationBar.isHidden = true
		
		let email = Auth.auth().currentUser?.email ?? "고객"
		welcomeLabel.text = """
		환영합니다.
		\(email)님
		"""
		
		let isEmailSginIn = Auth.auth().currentUser?.providerData[0].providerID == "password"
		resetPasswordButton.isHidden = !isEmailSginIn
	}

    @IBAction func profileUpdateButtonTapped(_ sender: Any) {
        let changeRequest = Auth.auth().currentUser?.createProfileChangeRequest()
        changeRequest?.displayName = "Suneom"
        changeRequest?.commitChanges { _ in
            let displayName = Auth.auth().currentUser?.displayName ?? Auth.auth().currentUser?.email ?? "고객"
            
            self.welcomeLabel.text = """
            환영합니다.
            \(displayName)님
            """
            
        }
    }
    @IBAction func logoutButtonTapped(_ sender: Any) {
		let firebaseAuth = Auth.auth()
		do {
			try firebaseAuth.signOut()
			self.navigationController?.popToRootViewController(animated: true)
		} catch let signOutError as NSError {
			print("ERROR: singout \(signOutError.localizedDescription)")
		}
		
	}
	
	@IBAction func resetPasswordButtonTapped(_ sender: Any) {
		let email = Auth.auth().currentUser?.email ?? ""
		Auth.auth().sendPasswordReset(withEmail: email, completion: nil)
	}
}
