//
//  AuthService.swift
//  AirBnbClone
//
//  Created by Stephan Dowless on 10/4/23.
//

import Foundation

class AuthService {
    
    @Published var didAuthenticateUser = false

    @MainActor
    func login(withEmail email: String, password: String) async throws {
        didAuthenticateUser = true 
    }
    
    @MainActor
    func signout() {
        didAuthenticateUser = false 
    }
}
