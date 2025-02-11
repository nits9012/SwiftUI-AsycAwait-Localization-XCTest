//
//  DemoApplicationApp.swift
//  DemoApplication
//
//  Created by Nitin Bhatt on 26/01/25.
//

import SwiftUI

@main
struct DemoApplicationApp: App {
    @StateObject var authViewModel = AuthServiceViewModel()
    
    var body: some Scene {
        WindowGroup {
            StartView().environmentObject(authViewModel)
        }
    }
}

// Get API : /color=all
//{
//    "id": "",
//    "name": "",
//    "productVariant": [
//        {
//            "id" : "",
//            "url": "",
//            "color": "red",
//            "subImages": [
//                {"url": ""},
//                {"url": ""}
//            ]
//        },
//        {
//            "id" : "",
//            "url": "",
//            "color": "blue",
//            "subImages": [
//                {"url": ""},
//                {"url": ""}
//            ]
//        },
//        {
//            "id" : "",
//            "url": "",
//            "color": "green",
//            "subImages": [
//                {"url": ""},
//                {"url": ""}
//            ]
//        }
//    ]
//}


//{
//    "id": "",
//    "name": "",
//    "productVariants": [
//        {
//            "id": "",
//            "url": "",
//            "color": "red",
//            "subImagesUrl": ["", ""]
//        },
//        {
//            "id": "",
//            "url": "",
//            "color": "blue",
//            "subImagesUrl": ["", ""]
//        },
//        {
//            "id": "",
//            "url": "",
//            "color": "green",
//            "subImagesUrl": ["", ""]
//        }
//    ]
//}

struct Product: Codable {
    var id: String
    var name: String
    var productVariants: [ProductVariant]
}

struct ProductVariant: Codable {
    var id: String
    var url: String
    var color: String
    var subImagesUrl: [String]
}

