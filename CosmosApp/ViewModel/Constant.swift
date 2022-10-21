//
//  Constant.swift
//  CosmosApp
//
//  Created by Bektur Mamytov on 20/10/22.
//

import Foundation

class Constant {
    static var apiKey: String {
        return "WxK6Gj4gkDGW7ZMWtRp7dThrcQZnKevaddD67091"
    }
    
    static var baseUrlString: String {
        return "https://api.nasa.gov/planetary/apod?"
    }
    
    static var url: URL {
        guard let url = URL(string: "\(baseUrlString)api_key=\(apiKey)&count=25") else {
            fatalError("ERROR: Didnt fetch url")
        }
        return url
    }
    
    static var session: URLSession {
        let session = URLSession(configuration: .default)
        return session
    }
    
    static var request: URLRequest {
        let req = URLRequest(url: url)
        return req
    }
    
    static var decoder: JSONDecoder {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return decoder
    }
}
