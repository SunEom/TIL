//
//  DetailWriteFormCellViewModel.swift
//  UsedGoodsUpload
//
//  Created by 엄태양 on 2022/07/29.
//

import RxSwift
import RxCocoa

struct DetailWriteFormViewModel {
    //View -> ViewModel
    let contentValue = PublishRelay<String?>()
}
