//
//  UserViewModelTests.swift
//  DemoApplicationTests
//
//  Created by Nitin Bhatt on 27/01/25.
//

import XCTest
@testable import DemoApplication

final class UserViewModelTests: XCTestCase {

      var request: MockedUserHttpClient?
      var viewModel: UserViewModel?
      
      override func setUp() {
          super.setUp()
          viewModel = UserViewModel()
          request = MockedUserHttpClient()
      }
      
      override func tearDown() {
          request = nil
          viewModel = nil
          super.tearDown()
      }
    
    func testFetchUsersSuccess() async {
        guard let request = request else {
            XCTFail(" Httpclient should not be nil")
            return
        }
        
        let response = await request.getContact()
        switch response {
        case .failure(let error) :
            XCTFail("Expected success but got failure \(error)")
        case .success(let users) :
            XCTAssertEqual(users.count, 2)
        }
    }
    
    
    func testFilterUsers_matchingSearchText_shouldReturnFilteredUsers() {
        // Check if the viewModel is initialized before running the test
        guard let viewModel = viewModel else {
            XCTFail("ViewModel should not be nil")
            return
        }
        
        // Arrange
        viewModel.searchText = "ad"
        
        let originalUsers = [
            User(id: 1, name: "aditya", username: "adi", email: "aditya@gmail.com"),
            User(id: 1, name: "robert", username: "rob", email: "robert@gmail.com"),
            User(id: 1, name: "matthew", username: "mat", email: "mat@gmail.com"),
            User(id: 1, name: "james", username: "jammy", email: "jammy@gmail.com"),
            User(id: 1, name: "adnan", username: "adnan", email: "adnan@gmail.com"),
        ]
        
        viewModel.users = originalUsers
        
        let expectedUsers = [
            User(id: 1, name: "aditya", username: "adi", email: "aditya@gmail.com"),
            User(id: 1, name: "adnan", username: "adnan", email: "adnan@gmail.com"),
        ]
        
        // Act
        viewModel.filterUsers()
        
        XCTAssertEqual(viewModel.users, expectedUsers, "Users should be filtered based on searchText prefix")
    }
}
