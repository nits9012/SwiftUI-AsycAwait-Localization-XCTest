//
//  UserService.swift
//  DemoApplication
//
//  Created by Nitin Bhatt on 26/01/25.
//

import Foundation

protocol UserServiceProtocol {
    func getContact() async -> Result<[User], APIError>
}

class UserService: UserServiceProtocol {
    
    var request: HTTPRequestHelper
    
    init(request: HTTPRequestHelper) {
        self.request = request
    }
    
    func getContact() async -> Result<[User], APIError> {
        do {
            // Fetch the raw data from the API
            let data = try await request.getRequest(path: APIPath().users)
            // Try to decode the fetched data into an array of Contacts
            let contacts = try JSONDecoder().decode([User].self, from: data)
            // If successful, return the result as .success
            return  .success(contacts)
        } catch let error as APIError {
            return .failure(error)
        } catch {
            return .failure(.decodingError)
        }
    }
}


