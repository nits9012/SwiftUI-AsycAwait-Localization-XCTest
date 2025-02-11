//
//  Environment.swift
//  DemoApplication
//
//  Created by Nitin Bhatt on 27/01/25.
//

import Foundation

public enum ConfigureEnviroment {
    enum Keys {
        static let baseUrl = "BASE_URL"
    }
    
    private static let infoDictionary: [String: Any] = {
        guard let dict = Bundle.main.infoDictionary else {
            fatalError("plist file not found")
        }
        return dict
    }()
    
    
    static let baseURL: String = {
        guard let baseURLString = ConfigureEnviroment.infoDictionary[Keys.baseUrl] as? String else {
            fatalError("BASE URL not set in plist")
        }
        return baseURLString
    }()
}
