//
//  APIPath.swift
//  DemoApplication
//
//  Created by Nitin Bhatt on 26/01/25.
//

import Foundation

let baseURL = "https://\(ConfigureEnviroment.baseURL)"

struct APIPath {
    var users: String { return "\(baseURL)/users"}
}



