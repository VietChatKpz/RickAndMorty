//
//  RMLocationViewController.swift
//  RickAndMorty
//
//  Created by Đình Việt on 30/01/2023.
//

import UIKit

final class RMLocationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        title = "Loctions"
        addSearchButton()
    }
    
    private func addSearchButton() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(didTapSearch))
    }
    
    @objc
    private func didTapSearch() {
        let vc = RMSearchViewController(config: RMSearchViewController.Config(type: .location))
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
}
