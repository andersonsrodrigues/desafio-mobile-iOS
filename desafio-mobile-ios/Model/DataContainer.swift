//
//  DataContainer.swift
//  desafio-mobile-ios
//
//  Created by Anderson Rodrigues on 11/03/21.
//

import Foundation

struct DataContainer<T: Decodable>: Decodable {
    var offset: Int
    var limit: Int
    var total: Int
    var count: Int
    var results: [T]
}
