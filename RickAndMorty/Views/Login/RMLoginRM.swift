//
//  RMLoginRM.swift
//  RickAndMorty
//
//  Created by Đình Việt on 13/03/2023.
//

import UIKit
import SwiftUI

struct RMLoginRM: UIViewControllerRepresentable {
    typealias UIViewControllerType = RMTabBarController
    func makeUIViewController(context: Context) -> RMTabBarController {
        let vc = RMTabBarController()
        return vc
    }
    
    func updateUIViewController(_ uiViewController: RMTabBarController, context: Context) {
        print("updating")
    }
}

struct RMLoginRMPreviews: PreviewProvider {
    static var previews: some View {
        RMLoginRM()
    }
}
