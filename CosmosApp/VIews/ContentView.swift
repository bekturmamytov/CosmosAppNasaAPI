//
//  ContentView.swift
//  CosmosApp
//
//  Created by Bektur Mamytov on 20/10/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.apod, id:\.title) { apod in
//                    APODImageView(apod.url)
//                        .frame(width: 375, height: 275)
                    AsyncImage(url: URL(string: apod.url), content: { image in
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 375, height: 275)
                    }) {
                        ProgressView()
                    }
                    .frame(width: 375, height: 375)
                        
                    VStack {
                        Text(apod.title)
                            .font(.title)
                        Text(apod.date)
                        Text(apod.explanation)
                            .font(.body)
                    }
                    
                }
            }
            .navigationTitle("APOD")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
