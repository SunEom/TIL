//
//  AddAlertViewController.swift
//  Drink
//
//  Created by 엄태양 on 2022/02/18.
//

import UIKit

class AddAlertViewController: UIViewController {
    var pickedDate:((_ date: Date)-> Void)?
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func dismissButtonTapped(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveButtonTapped(_ sender: UIBarButtonItem) {
        pickedDate?(datePicker.date)
        self.dismiss(animated: true, completion: nil)
    }
}
