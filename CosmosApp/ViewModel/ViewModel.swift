//
//  ViewModel.swift
//  CosmosApp
//
//  Created by Bektur Mamytov on 20/10/22.
//

import SwiftUI
import Combine

class ViewModel: ObservableObject {
    @Published var apod: [APOD] = []
    init() {
        self.fetch()
    }
}

extension ViewModel {
    func fetch() {
        API.getImage { apod in
            self.apod = apod
        }
    }
}
