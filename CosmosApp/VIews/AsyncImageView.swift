//
//  AsyncImageView.swift
//  CosmosApp
//
//  Created by Bektur Mamytov on 20/10/22.
//

import SwiftUI

struct AsyncImageView: View {
    var body: some View {
        AsyncImage(url: URL(string: "https://blckbirds.com/wp-content/uploads/2021/10/pexels-kammeran-gonzalezkeola-6128227-2.jpg"))
            .scaledToFit()
            .frame(width: 300, height: 300)
    }
}

struct AsyncImageView_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageView()
    }
}
