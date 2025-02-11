//
//  UserViewModel.swift
//  DemoApplication
//
//  Created by Nitin Bhatt on 26/01/25.
//

import Foundation

class UserViewModel: ObservableObject {
    @Published var users: [User] = []
    @Published var errorMessage:String?
    @Published var searchText: String = "" {
        didSet {
            filterUsers()
        }
    }
    
    var userService: UserServiceProtocol
    var loading = false
 
    init(service: UserServiceProtocol = UserService(request: HTTPRequestHelper())) {
          self.userService = service
    }
    
    func fetchContacts() {
        loading = true
        
        Task { [weak self] in
            guard let self = self else { return } // Safely unwrap self
            
            let results = await self.userService.getContact()
            // Now update the UI on the main thread
            await MainActor.run {
                self.loading = false
                
                switch results {
                case .failure(let error):
                    self.errorMessage = error.localizedDescription
                case .success(let userlist) :
                    self.users = userlist
                }
            }
        }
    }
    
    func filterUsers() {
        if searchText.isEmpty {
            users = users
        } else {
            users = users.filter { $0.name.lowercased().hasPrefix(searchText.lowercased()) }
        }
    }
}


//    var fetchUserTask: Task<Void,Never>? = nil
//        func cancelTask() {
//            fetchUserTask?.cancel()
//        }
