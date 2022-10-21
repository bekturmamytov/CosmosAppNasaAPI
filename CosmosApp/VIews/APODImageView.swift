//
//  APODImageView.swift
//  CosmosApp
//
//  Created by Bektur Mamytov on 20/10/22.
//

import SwiftUI

struct APODImageView: View {
    @ObservedObject var imageLoader = ImageLoader()
    init(_ url: String) {
        self.imageLoader.load(url)
    }
    var body: some View {
        if let image = imageLoader.downloadedImage {
            return Image(uiImage: image)
                .resizable()
                .scaledToFit()
        } else {
            return Image(systemName: "photo")
                .resizable()
                .scaledToFit()
        }
    }
}

