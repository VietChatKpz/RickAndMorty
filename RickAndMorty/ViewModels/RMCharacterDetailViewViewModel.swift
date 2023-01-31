//
//  RMCharacterDetailViewViewModel.swift
//  RickAndMorty
//
//  Created by Đình Việt on 31/01/2023.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    
    private let character: RMCharacter
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    public var title: String {
        character.name.uppercased()
    }
}
