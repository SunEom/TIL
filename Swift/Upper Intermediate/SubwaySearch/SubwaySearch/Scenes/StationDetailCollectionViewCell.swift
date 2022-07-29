//
//  StationDetailCollectionViewCell.swift
//  SubwaySearch
//
//  Created by 엄태양 on 2022/07/29.
//

import SnapKit
import UIKit

final class StationDetailCollectionViewCell: UICollectionViewCell {

    private lazy var lineLabel:UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15.0, weight: .bold)
        
        return label
    }()
    
    private lazy var remainLabel:UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15.0, weight: .medium)
        
        return label
    }()
    
    
    func setup(with realtimeArrival : StationArrivalDataResponseModel.RealTimeArrival) {
        layer.cornerRadius = 12.0
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.2
        layer.shadowRadius = 10
        
        backgroundColor = .systemBackground
        
        [lineLabel, remainLabel].forEach { addSubview($0) }
        
        lineLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(16)
            $0.top.equalToSuperview().inset(16)
        }
        
        remainLabel.snp.makeConstraints {
            $0.leading.equalTo(lineLabel)
            $0.top.equalTo(lineLabel.snp.bottom).offset(10)
            $0.bottom.equalToSuperview().inset(16)
        }
        
        lineLabel.text = realtimeArrival.line
        remainLabel.text = realtimeArrival.remainTime
    }
}
