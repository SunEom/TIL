//
//  SearchBarViewModel.swift
//  SearchDaumBlog
//
//  Created by 엄태양 on 2022/07/29.
//

import RxSwift
import RxCocoa

struct SearchBarViewModel {
    let queryText = PublishRelay<String?>()
    
    //MARK: -  Search Bar button event
    let searchButtonTapped = PublishRelay<Void>()
    
    //MARK: - Search Bar 외부로 내보낼 이벤트
    var shouldLoadResult = Observable<String>.of("")
    
    init() {
        self.shouldLoadResult = searchButtonTapped
            .withLatestFrom(queryText) { $1 ?? ""}
            .filter { !$0.isEmpty }
            .distinctUntilChanged()
    }
    
}
