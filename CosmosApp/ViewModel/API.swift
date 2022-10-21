//
//  API.swift
//  CosmosApp
//
//  Created by Bektur Mamytov on 20/10/22.
//

import Foundation

class API {
    class func getImage(_ onSuccess: @escaping ([APOD]) -> ()) {
        Constant.session.dataTask(with: Constant.request) { (data, res, err) in
            guard let data = data, err == nil else {
                fatalError()
            }
            do {
                let apod = try Constant.decoder.decode([APOD].self, from: data)
                DispatchQueue.main.async {
                    onSuccess(apod)
                }
            } catch {
                print("DEBUG:\(error)")
            }
        }.resume()
    }
}
