//
//  Content.swift
//  NetflixStyleSampleApp
//
//  Created by 엄태양 on 2022/02/23.
//

import Foundation
import UIKit

struct Content: Decodable {
    let sectionType: SectionType
    let sectionName: String
    let contentItem: [Item]
    
    enum SectionType: String, Decodable {
        case main
        case basic
        case large
        case rank
    }
}

struct Item:Decodable {
    let description: String
    let imageName: String
    
    var image: UIImage {
        return UIImage(named: imageName) ?? UIImage()
    }
}
