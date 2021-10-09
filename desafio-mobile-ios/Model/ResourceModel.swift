//
//  ResourceModel.swift
//  desafio-mobile-ios
//
//  Created by Anderson Rodrigues on 11/03/21.
//

import Foundation

struct ResourceModel: Decodable {
    var available: Int?
    var returned: Int?
    var collectionURI: String?
    var items: [SummaryEntityModel]?
}

struct SummaryEntityModel: Decodable {
    var name: String?
    var type: String?
    var resourceURI: String?
}
