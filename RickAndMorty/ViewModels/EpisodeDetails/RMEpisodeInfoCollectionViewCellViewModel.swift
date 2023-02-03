//
//  RMEpisodeInfoCollectionViewCellViewModel.swift
//  RickAndMorty
//
//  Created by Đình Việt on 03/02/2023.
//

import Foundation

final class RMEpisodeInfoCollectionViewCellViewModel {
    private let title: String
    
    private let value: String
    
    init(title: String, value: String) {
        self.title = title
        self.value = value
    }
}
