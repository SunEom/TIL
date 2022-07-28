//
//  AlertActionConvertable.swift
//  SearchDaumBlog
//
//  Created by 엄태양 on 2022/07/28.
//

import UIKit

protocol AlertActionConvertible {
    var title: String { get }
    var style: UIAlertAction.Style { get }
}

