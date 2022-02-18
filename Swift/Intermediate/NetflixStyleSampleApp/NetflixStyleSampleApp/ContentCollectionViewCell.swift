//
//  ContentCollectionViewCell.swift
//  NetflixStyleSampleApp
//
//  Created by 엄태양 on 2022/02/18.
//

import Foundation
import SnapKit
import UIKit

class ContentCollectionViewCell: UICollectionViewCell {
    let imageView =  UIImageView()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 5
        contentView.clipsToBounds = true
        
        imageView.contentMode = .scaleToFill
        
        contentView.addSubview(imageView)
        
        imageView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}
