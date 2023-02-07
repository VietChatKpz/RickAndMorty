//
//  RMSearchView.swift
//  RickAndMorty
//
//  Created by Đình Việt on 07/02/2023.
//

import UIKit

final class RMSearchView: UIView {

    private let viewModel: RMSearchViewViewModel
    
    private let noSearchResult = RMNoSearchResultsView()
    
    init(frame: CGRect, viewModel: RMSearchViewViewModel) {
        self.viewModel = viewModel
        super.init(frame: frame)
        backgroundColor = .systemBackground
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(noSearchResult)
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            noSearchResult.widthAnchor.constraint(equalToConstant: 150),
            noSearchResult.heightAnchor.constraint(equalToConstant: 150),
            noSearchResult.centerXAnchor.constraint(equalTo: centerXAnchor),
            noSearchResult.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }

}

extension RMSearchView: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
    }
}
