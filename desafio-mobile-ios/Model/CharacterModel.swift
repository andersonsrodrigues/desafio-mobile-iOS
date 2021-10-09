//
//  CharacterModel.swift
//  desafio-mobile-ios
//
//  Created by Anderson Rodrigues on 11/03/21.
//

import Foundation

struct CharacterModel: Decodable {
    var id: Int?
    var name: String?
    var description: String?
    var thumbnail: ImageModel?
    var comics: ResourceModel?
}
