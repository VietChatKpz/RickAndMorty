//
//  RMCharacterDetailViewController.swift
//  RickAndMorty
//
//  Created by Đình Việt on 31/01/2023.
//

import UIKit

final class RMCharacterDetailViewController: UIViewController {
    
    private let viewModel: RMCharacterDetailViewViewModel
    
    private let datailView = RMCharacterDetailView()
    
    init(viewModel: RMCharacterDetailViewViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = viewModel.title
        view.addSubview(datailView)
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .action,
            target: self,
            action: #selector(didTapShare))
        addConstraints()
        viewModel.fetchCharacterInfo()
    }
    
    @objc
    private func didTapShare() {
        
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            datailView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            datailView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            datailView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            datailView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
