//
//  RMLocationViewViewModel.swift
//  RickAndMorty
//
//  Created by Đình Việt on 06/02/2023.
//

import Foundation

protocol RMLocationViewViewModelDelegate: AnyObject {
    func didFetchInitialLocations()
}

final class RMLocationViewViewModel {
    
    private var locations: [RMLocation] = [] {
        didSet {
            for location in locations {
                let cellViewModel = RMLocationTableViewCellViewModel(location: location)
                if !cellViewModels.contains(cellViewModel) {
                    cellViewModels.append(cellViewModel)
                }
            }
        }
    }
        
    private var apiInfo: RMGetAllLocationsResponse.Info?
    
    public var cellViewModels: [RMLocationTableViewCellViewModel] = []
    
    public weak var delegate: RMLocationViewViewModelDelegate?
    
    init() {
        
    }
    
    public func fetchLocations() {
        RMService.shared.execute(.listLocationsRequests, expecting: RMGetAllLocationsResponse.self) { [weak self] result in
            switch result {
            case .success(let model):
                self?.apiInfo = model.info
                self?.locations = model.results
                DispatchQueue.main.async {
                    self?.delegate?.didFetchInitialLocations()
                }
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
    
    private var hasMoreResults: Bool {
        return false
    }
}
