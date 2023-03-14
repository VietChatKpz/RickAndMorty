//
//  RMSettingsOption.swift
//  RickAndMorty
//
//  Created by Đình Việt on 06/02/2023.
//

import UIKit

//All Cases
enum RMSettingsOption: CaseIterable {
    case rateApp
    case contactUs
    case terms
    case privacy
    case apiReference
    case viewSeries
    case viewCode
    case logOut
    
    var targetUrl: URL? {
        switch self {
        case .rateApp:
            return nil
        case .contactUs:
            return URL(string: "https://www.google.com")
        case .terms:
            return URL(string: "https://www.google.com")
        case .privacy:
            return URL(string: "https://www.google.com")
        case .apiReference:
            return URL(string: "https://www.google.com")
        case .viewSeries:
            return URL(string: "https://www.google.com")
        case .viewCode:
            return URL(string: "https://chat.openai.com/chat")
        case .logOut:
            return URL(string: "https://www.youtube.com/watch?v=6-LmZLjS5WI")
        }
    }
    
    var displayTitle: String {
        switch self {
        case .rateApp:
            return "Rate App"
        case .contactUs:
            return "Contact Us"
        case .terms:
            return "Terms of Service"
        case .privacy:
            return "Prvacy Police"
        case .apiReference:
            return "API Reference"
        case .viewSeries:
            return "View Video Series"
        case .viewCode:
            return "View App Code"
        case .logOut:
            return "Log Out"
        }
    }
    
    var iconContaintColor: UIColor {
        switch self {
        case .rateApp:
            return .systemBlue
        case .contactUs:
            return .systemGreen
        case .terms:
            return .systemMint
        case .privacy:
            return .systemRed
        case .apiReference:
            return .systemCyan
        case .viewSeries:
            return .systemPink
        case .viewCode:
            return .systemGray
        case .logOut:
            return .systemGray3
        }
    }
    
    var iconImage: UIImage? {
        switch self {
        case .rateApp:
            return UIImage(systemName: "star.fill")
        case .contactUs:
            return UIImage(systemName: "paperplane")
        case .terms:
            return UIImage(systemName: "doc")
        case .privacy:
            return UIImage(systemName: "lock")
        case .apiReference:
            return UIImage(systemName: "list.clipboard")
        case .viewSeries:
            return UIImage(systemName: "tv.fill")
        case .viewCode:
            return UIImage(systemName: "hammer.fill")
        case .logOut:
            return UIImage(systemName: "escape")
        }
    }
}
