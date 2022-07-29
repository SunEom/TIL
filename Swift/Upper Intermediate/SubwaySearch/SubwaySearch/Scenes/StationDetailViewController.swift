//
//  DetailViewController.swift
//  SubwaySearch
//
//  Created by 엄태양 on 2022/07/29.
//

import UIKit
import SnapKit
import Alamofire

class StationDetailViewController: UIViewController {
    
    private let station: Station
    private var realtimeArrivalList: [StationArrivalDataResponseModel.RealTimeArrival] = []
    
    init(station: Station) {
        self.station = station
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private lazy var refreshControl: UIRefreshControl = {
        let refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action: #selector(fetchData), for: .valueChanged)
        
        return refreshControl
    }()
    
    @objc func fetchData() {
        let stationName = station.stationName
        let urlString = "http://swopenapi.seoul.go.kr/api/subway/sample/json/realtimeStationArrival/0/5/\(stationName.replacingOccurrences(of: "역", with: ""))"
        
        AF.request(urlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "")
            .responseDecodable(of: StationArrivalDataResponseModel.self){ [weak self] response in
                self?.refreshControl.endRefreshing()
                
                guard case .success(let data) = response.result else { return }
                
                self?.realtimeArrivalList = data.realtimeArrivalList
                self?.collectionView.reloadData()
            }
    }
    
    private lazy var collectionView: UICollectionView = {
       let layout = UICollectionViewFlowLayout()
        
        layout.estimatedItemSize = CGSize(width: view.frame.width-32.0, height: 100)
        layout.sectionInset = UIEdgeInsets(top: 16.0, left: 16.0, bottom: 16.0, right: 16.0)
        
        layout.scrollDirection = .vertical
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .systemBackground
        collectionView.register(StationDetailCollectionViewCell.self, forCellWithReuseIdentifier: "StationDetailCollectionViewCell")
        collectionView.dataSource = self
        
        collectionView.refreshControl = refreshControl
        
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = station.stationName
        
        view.addSubview(collectionView)
        collectionView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        fetchData()
    }
}

extension StationDetailViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return realtimeArrivalList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StationDetailCollectionViewCell", for: indexPath) as? StationDetailCollectionViewCell
        
        cell?.setup(with: realtimeArrivalList[indexPath.row])
        return cell ?? UICollectionViewCell()
    }
}
