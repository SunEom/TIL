//
//  CodePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by 엄태양 on 2022/01/07.
//

import UIKit

class CodePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
