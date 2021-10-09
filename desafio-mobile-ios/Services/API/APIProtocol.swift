//
//  APIProtocol.swift
//  desafio-mobile-ios
//
//  Created by Anderson Rodrigues on 11/03/21.
//

import Foundation

protocol APIConfiguration {
    var method: Method { get }
    var path: String { get }
    var base: String { get }
    
    func asURLRequest() throws -> URLRequest
}
