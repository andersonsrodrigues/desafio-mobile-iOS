//
//  ComicModel.swift
//  desafio-mobile-ios
//
//  Created by Anderson Rodrigues on 11/03/21.
//

import Foundation

struct ComicModel: Decodable {
    var id: Int?
    var title: String?
    var description: String?
    var prices: [PriceModel]
    var thumbnail: ImageModel?
    
    func highestPrice() -> Double {
        let high = prices.max { $0.price < $1.price }

        if let price = high?.price {
            return price
        }
        
        return 0.00
    }
}

struct PriceModel: Decodable {
    var type: String?
    var price: Double
}

extension ComicModel: Comparable {
    static func < (lhs: ComicModel, rhs: ComicModel) -> Bool {
        return lhs.highestPrice() < rhs.highestPrice() && lhs.title?.caseInsensitiveCompare(rhs.title!) == .orderedAscending
    }

    static func == (lhs: ComicModel, rhs: ComicModel) -> Bool {
        return lhs.highestPrice() == rhs.highestPrice() && lhs.title?.caseInsensitiveCompare(rhs.title!) == .orderedSame
    }

    static func > (lhs: ComicModel, rhs: ComicModel) -> Bool {
        return lhs.highestPrice() > rhs.highestPrice() && lhs.title?.caseInsensitiveCompare(rhs.title!) == .orderedDescending
    }
}
