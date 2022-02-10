//
//  COVIDDetailViewController.swift
//  COVID19
//
//  Created by 엄태양 on 2022/02/10.
//

import UIKit

class COVIDDetailViewController: UITableViewController {
	@IBOutlet weak var newCaseCell: UITableViewCell!
	@IBOutlet weak var totalCaseCell: UITableViewCell!
	@IBOutlet weak var recoveredCell: UITableViewCell!
	@IBOutlet weak var deathCell: UITableViewCell!
	@IBOutlet weak var percentageCell: UITableViewCell!
	@IBOutlet weak var overseasInflowCell: UIView!
	@IBOutlet weak var regionalOutbreakCell: UITableViewCell!
	
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
