//
//  LoginViewModel.swift
//  AirBnbClone
//
//  Created by Stephan Dowless on 10/4/23.
//

import Foundation

@MainActor
class LoginViewModel: ObservableObject {
    @Published var showAlert = false
    @Published var authError: AuthError?
    @Published var isAuthenticating = false
    @Published var email = ""
    @Published var password = ""
    
    private let service: AuthService
    
    init(service: AuthService) {
        self.service = service
    }
    
    func login() async {
        isAuthenticating = true
        
        do {
            try await service.login(withEmail: email, password: password)
            isAuthenticating = false
        } catch {
            self.showAlert = true
            isAuthenticating = false
            self.authError = AuthError.invalidEmail
        }
    }
}
