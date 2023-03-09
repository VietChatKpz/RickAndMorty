//
//  RMSearchResultViewModel.swift
//  RickAndMorty
//
//  Created by Đình Việt on 09/03/2023.
//

import Foundation

enum RMSearchResultViewModel {
    case character([RMCharacterCollectionViewCellViewModel])
    case episode([RMCharacterEpisodeCollectionViewCellViewModel])
    case location([RMLocationTableViewCellViewModel])
}
