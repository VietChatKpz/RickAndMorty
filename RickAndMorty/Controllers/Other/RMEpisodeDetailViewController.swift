//
//  RMEpisodeDetailViewController.swift
//  RickAndMorty
//
//  Created by Đình Việt on 02/02/2023.
//

import UIKit

class RMEpisodeDetailViewController: UIViewController {

    private let url: URL?
    
    init(url: URL?) {
        self.url = url
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Episode"
    }

}
