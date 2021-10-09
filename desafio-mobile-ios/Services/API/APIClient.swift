//
//  APIClient.swift
//  desafio-mobile-ios
//
//  Created by Anderson Rodrigues on 11/03/21.
//

import Foundation

final class APIClient {
    
    class func getAllCharacters(on page: Int, completion: @escaping(DataContainer<CharacterModel>?, Error?) -> Void) {
        APIService.performRequestByDecoder(from: APIRouter.getAllCharacters(page), responseType: SuccessResponse<CharacterModel>.self) { response in
            switch response {
            case .success(let value):
                return completion(value.data, nil)
            case .failure(let error):
                return completion(nil, error)
            }
        }
    }
    
    class func getAllComics(by characterID: Int, completion: @escaping([ComicModel], Error?) -> Void) {
        APIService.performRequestByDecoder(from: APIRouter.getAllComics(characterID), responseType: SuccessResponse<ComicModel>.self) { response in
            switch response {
            case .success(let value):
                return completion(value.data.results, nil)
            case .failure(let error):
                return completion([], error)
            }
        }
    }
    
    class func downloadPosterImage(path: String, size: ImageSize, ext: String, completion: @escaping(Data?, Error?) -> Void) {
        APIService.performRequestByData(from: APIRouter.getImageFromURL(path, size, ext)) { response in
            switch response {
            case .success(let value):
                return completion(value, nil)
            case .failure(let error):
                return completion(nil, error)
            }
        }
    }
}
