//
//  ImageLoader.swift
//  CosmosApp
//
//  Created by Bektur Mamytov on 20/10/22.
//

import SwiftUI
import Combine

class ImageLoader: ObservableObject {
    @Published var downloadedImage: UIImage? = nil
}

extension ImageLoader {
    func load(_ urlString: String) {
        guard let url = URL(string: urlString) else {
            fatalError("Unable parse image url")
        }
        
        Constant.session.dataTask(with: url, completionHandler: imageDataHandler).resume()
    }
    
    func imageDataHandler(data: Data?, res: URLResponse?, error: Error?) {
        guard let data = data, error == nil else {
            print("DEBUG: \(String(describing: error))")
            fatalError("Unable to get image data")
        }
        
        DispatchQueue.main.async {
            self.downloadedImage = UIImage(data: data)
        }
    }
}
