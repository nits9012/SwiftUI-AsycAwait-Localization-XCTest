//
//  User.swift
//  DemoApplication
//
//  Created by Nitin Bhatt on 26/01/25.
//
struct User: Codable, Identifiable, Equatable, Hashable {
    var id: Int
    var name: String
    var username: String?
    var email: String
    var phone: String?
    var website: String?
    
    enum CodingKeys: String, CodingKey {
         case id
         case name
         case username
         case email
         case phone
         case website
     }
}
