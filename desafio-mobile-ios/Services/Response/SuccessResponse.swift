//
//  SuccessResponse.swift
//  desafio-mobile-ios
//
//  Created by Anderson Rodrigues on 11/03/21.
//

import Foundation

struct SuccessResponse<T: Decodable>: Decodable {
    var code: Int
    var status: String
    var data: DataContainer<T>
    
    enum CodingKeys: String, CodingKey {
        case code, status, data
    }
}
