//
//  CodePushViewController.swift
//  ScreenTransitionExample
//
//  Created by 엄태양 on 2022/01/07.
//

import UIKit

class CodePushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
