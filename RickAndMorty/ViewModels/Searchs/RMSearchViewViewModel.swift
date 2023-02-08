//
//  RMSearchViewViewModel.swift
//  RickAndMorty
//
//  Created by Đình Việt on 07/02/2023.
//

import Foundation

final class RMSearchViewViewModel {
    let config: RMSearchViewController.Config
    
    private var optionMap: [RMSearchInputViewViewModel.DynamicOption: String] = [:]
    private var searchText = ""
    
    private var optionMapUpdateBlock: (((RMSearchInputViewViewModel.DynamicOption, String)) -> Void)?
    
    init(config: RMSearchViewController.Config) {
        self.config = config
    }
        
    public func executeSearch() {
        switch config.type {
        case .character:
            var urlString = "https://rickandmortyapi.com/api/character/"
            urlString += "?name=\(searchText)"
            
            for (option, value) in optionMap {
                urlString += "&\(option.queryArgument)=\(value)"
            }
            
            guard let url = URL(string: urlString) else {
                return
            }
            
            guard let request = RMRequest(url: url) else {
                return
            }
            
        case .location:
            break
        case .episode:
            break
        }
    }
    
    public func set(query text: String) {
        self.searchText = text
    }
    
    public func set(value: String, for option: RMSearchInputViewViewModel.DynamicOption) {
        optionMap[option] = value
        let tuple = (option, value)
        optionMapUpdateBlock?(tuple)
    }
    
    public func registerOptionChangeBlock(_ block: @escaping ((RMSearchInputViewViewModel.DynamicOption, String)) -> Void) {
        self.optionMapUpdateBlock = block
    }
}
