//
//  FilterViewModel.swift
//  SearchDaumBlog
//
//  Created by 엄태양 on 2022/07/29.
//

import RxSwift
import RxCocoa

struct FilterViewModel {
    
    //FilterView 외부에서 관찰
    let sortButtonTapped = PublishRelay<Void>()
    
}
