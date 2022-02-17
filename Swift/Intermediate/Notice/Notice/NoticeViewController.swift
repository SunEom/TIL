//
//  NoticeViewController.swift
//  Notice
//
//  Created by 엄태양 on 2022/02/17.
//

import UIKit

class NoticeViewController: UIViewController {
    
    var noticeConents: (title: String, detail: String, date: String)?
    
    @IBOutlet weak var noticeView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        noticeView.layer.cornerRadius = 6
        noticeView.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        
        guard let noticeConents = noticeConents else {
            return
        }
        
        titleLabel.text = noticeConents.title
        detailLabel.text = noticeConents.detail
        dateLabel.text = noticeConents.date

    }
    
    @IBAction func doneButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
