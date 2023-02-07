//
//  RMNoSearchResultsView.swift
//  RickAndMorty
//
//  Created by Đình Việt on 07/02/2023.
//

import UIKit

class RMNoSearchResultsView: UIView {

    private let viewModel = RMNoSearchResultsViewViewModel()
    
    private let iconView: UIImageView = {
        let icon = UIImageView()
        icon.contentMode = .scaleAspectFit
        icon.tintColor = .secondaryLabel
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20, weight: .medium)
        label.textColor = .tertiaryLabel
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(iconView, label)
        configure()
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            iconView.widthAnchor.constraint(equalToConstant: 90),
            iconView.heightAnchor.constraint(equalToConstant: 90),
            iconView.topAnchor.constraint(equalTo: topAnchor),
            iconView.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            label.leftAnchor.constraint(equalTo: leftAnchor),
            label.rightAnchor.constraint(equalTo: rightAnchor),
            label.bottomAnchor.constraint(equalTo: bottomAnchor),
            label.heightAnchor.constraint(greaterThanOrEqualToConstant: 10)
        ])
    }

    private func configure() {
        iconView.image = viewModel.image
        label.text = viewModel.title
    }
}
