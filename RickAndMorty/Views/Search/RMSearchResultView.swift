//
//  RMSearchResultView.swift
//  RickAndMorty
//
//  Created by Đình Việt on 09/03/2023.
//

import UIKit

final class RMSearchResultView: UIView {

    private var viewModel: RMSearchResultViewModel? {
        didSet {
            self.processViewModel()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        isHidden = true
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func addConstraints() {
        
    }
    
    private func processViewModel() {
        guard let viewModel = viewModel else {
            return
        }
        
        switch viewModel {
        case .character(let viewModel):
            break
        case .episode(let viewModel):
            break
        case .location(let viewModel):
            break
        }
    }
    
    public func configure(with viewModel: RMSearchResultViewModel) {
        
    }
}
