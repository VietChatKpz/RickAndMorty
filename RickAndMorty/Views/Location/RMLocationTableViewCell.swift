//
//  RMLocationTableViewCell.swift
//  RickAndMorty
//
//  Created by Đình Việt on 06/02/2023.
//

import UIKit

final class RMLocationTableViewCell: UITableViewCell {

    static let cellIndentifier = "RMLocationTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .systemBackground
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    public func configure(with viewModel: RMLocationTableViewCellViewModel) {
        
    }
}
