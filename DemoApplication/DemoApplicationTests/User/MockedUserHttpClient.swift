//
//  MockedUserHttpClient.swift
//  DemoApplicationTests
//
//  Created by Nitin Bhatt on 27/01/25.
//

import Foundation
@testable import DemoApplication

class MockedUserHttpClient: UserServiceProtocol {
    func getContact() async -> Result<[User], APIError> {
        guard let url = Bundle(for: MockedUserHttpClient.self).url(forResource: "UserResponse", withExtension: "json") else{
            return .failure(APIError.invalidURL)
        }
        
        guard let data = try? Data(contentsOf: url) else {
            return .failure(APIError.invalidURL)
        }
        
        guard let users = try? JSONDecoder().decode([User].self, from: data) else {
            return .failure(APIError.decodingError)
        }
        
        return .success(users)
    }
}
