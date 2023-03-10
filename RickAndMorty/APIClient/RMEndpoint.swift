//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Đình Việt on 30/01/2023.
//

import Foundation

@frozen enum RMEndpoint: String, CaseIterable, Hashable{
    case character
    case location
    case episode
}
