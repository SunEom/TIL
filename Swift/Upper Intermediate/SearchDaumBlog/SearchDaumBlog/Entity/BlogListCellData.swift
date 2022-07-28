//
//  BlogListCellData.swift
//  SearchDaumBlog
//
//  Created by 엄태양 on 2022/07/28.
//

import Foundation

struct BlogListCellData: Decodable {
    let thumnailURL: URL?
    let name: String?
    let title: String?
    let datetime: Date?
}
